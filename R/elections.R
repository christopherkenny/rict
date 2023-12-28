rict_elections <- function(map, plan, as_gt = TRUE) {

  elecs <- map |>
    tibble::as_tibble() |>
    dplyr::select(dplyr::contains('_dem_'), dplyr::ends_with('_dem')) |>
    names() |>
    stringr::word(end = 2, sep = '_') |>
    unique()

  elect_tb <- lapply(elecs, function(el) {
    vote_d <- map |>
      dplyr::as_tibble() |>
      dplyr::select(
        dplyr::starts_with(paste0(el, "_dem")),
        dplyr::starts_with(paste0(el, "_rep"))
      )
    if (ncol(vote_d) != 2) {
      return(NULL)
    }
    dvote <- vote_d |> dplyr::pull(1)
    rvote <- vote_d |> dplyr::pull(2)

    tibble::tibble(
      District = plan,
      dvote = dvote,
      rvote = rvote
    ) |>
      dplyr::group_by(.data$District) |>
      dplyr::summarise(
        {{el}} := sum(dvote, na.rm = TRUE) / (sum(dvote, na.rm = TRUE) + sum(rvote, na.rm = TRUE))
      )
  }) |>
    purrr::discard(.p = function(d) is.null(d))

  if (length(elect_tb) > 1) {
    elect_tb <- elect_tb |>
      purrr::reduce(dplyr::left_join, by = 'District') |>
      dplyr::rowwise() |>
      dplyr::mutate(
        e_dvs = mean(dplyr::c_across(-'District'), na.rm = TRUE),
      ) |>
      dplyr::ungroup()
  } else if (length(elect_tb) == 1) {
    elect_tb <- elect_tb[[1]]
  } else {
    elect_tb <- tibble::tibble(District = sort(unique(plan)))
  }

  cycles <- map |>
    tibble::as_tibble() |>
    dplyr::select(dplyr::starts_with('adv_')) |>
    names() |>
    stringr::word(start = 2, end = 2, sep = '_') |>
    unique()

  cycle_tb <- lapply(cycles, function(el) {
    vote_d <- map |>
      dplyr::as_tibble() |>
      dplyr::select(
        dplyr::starts_with(paste0('adv_', el)),
        dplyr::starts_with(paste0('arv_', el))
      )
    if (ncol(vote_d) != 2) {
      return(NULL)
    }
    dvote <- vote_d |> dplyr::pull(1)
    rvote <- vote_d |> dplyr::pull(2)

    # if (all(is.na(dvote)) | all(is.na(rvote))) {
    #   return(NULL)
    # }

    el <- paste0('avg_', el)

    tibble::tibble(
      District = plan,
      dvote = dvote,
      rvote = rvote
    ) |>
      dplyr::group_by(.data$District) |>
      dplyr::summarise(
        {{el}} := sum(dvote, na.rm = TRUE) / (sum(dvote, na.rm = TRUE) + sum(rvote, na.rm = TRUE))
      )
  }) |>
    purrr::discard(.p = function(d) is.null(d))

  if (length(cycle_tb) > 1) {
    cycle_tb <- cycle_tb |>
      purrr::reduce(dplyr::left_join, by = 'District') |>
      dplyr::rowwise() |>
      dplyr::mutate(
        avg_cycle = mean(dplyr::c_across(dplyr::starts_with('avg_')), na.rm = TRUE)
      ) |>
      dplyr::ungroup()
  } else if (length(cycle_tb) == 1) {
    cycle_tb <- cycle_tb[[1]]
  } else {
    cycle_tb <- tibble::tibble(District = sort(unique(plan)))
  }

  if ('ndv' %in% names(map) && 'nrv' %in% names(map)) {
    ndv <- map |> dplyr::pull('ndv')
    nrv <- map |> dplyr::pull('nrv')
    ndshare_tb <- tibble::tibble(
      District = plan,
      ndv = ndv,
      nrv = nrv
    ) |>
      dplyr::group_by(.data$District) |>
      dplyr::summarise(
        ndshare = sum(.data$ndv, na.rm = TRUE) / (sum(.data$ndv, na.rm = TRUE) + sum(.data$nrv, na.rm = TRUE))
      )
  } else {
    ndshare_tb <- tibble::tibble(District = sort(unique(plan)))
  }

  out <- list(
    elect_tb,
    cycle_tb,
    ndshare_tb
  ) |>
    purrr::reduce(dplyr::left_join, by = 'District') |>
    dplyr::relocate(dplyr::any_of(c('District', 'e_dvs', 'avg_cycle', 'ndshare')), .before = 1)

  if (as_gt) {
    out |>
      gt::gt() |>
      gt::tab_spanner(
        label = 'Contests Dem. Vote Share',
        columns = dplyr::any_of(setdiff(names(elect_tb), c('District', 'e_dvs')))
      ) |>
      gt::tab_spanner(
        label = 'Cycle Dem. Vote Share',
        columns = dplyr::any_of(setdiff(names(cycle_tb), c('District', 'avg_cycle')))
      ) |>
      gt::tab_spanner(
        label = 'Average Dem. Vote Share',
        columns = dplyr::any_of(c('e_dvs', 'avg_cycle', 'ndshare'))
      ) |>
      gt::cols_label(
        e_dvs = 'Contest',
        avg_cycle = 'Cycle',
        ndshare = 'Pre-Average'
      ) |>
      gt::cols_label_with(
        columns = dplyr::starts_with('avg_'),
        fn = function(x) stringr::str_replace(x, 'avg_', '20')
      ) |>
      gt::cols_label_with(
        columns = dplyr::any_of(setdiff(names(elect_tb), c('District', 'e_dvs'))),
        fn = function(x) {
          paste0(
            x |> stringr::word(sep = '_') |> format_election_names(),
            paste0(' 20', x |> stringr::word(start = 2, end = 2, sep = '_'))
          )
        }
      ) |>
      data_color_party(-1) |>
      gt::fmt_percent(
        columns = -1,
        decimals = 1
      )
  } else {
    out
  }
}
