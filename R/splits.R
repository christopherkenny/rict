rict_splits <- function(map, plan, admin = NULL, subadmin = NULL, total = NULL,
                        multi = NULL, as_gt = TRUE) {

  admin_out <- lapply(seq_along(admin), function(i) {
    redistmetrics::splits_admin(plan, map, !!rlang::sym(admin[i]))
  })
  if (length(admin_out) > 0) {
    admin_out <- admin_out |>
      stats::setNames(paste0('admin_', admin)) |>
      tibble::as_tibble()
  }

  subadmin_out <- lapply(seq_along(subadmin), function(i) {
    redistmetrics::splits_sub_admin(plan, map, !!rlang::sym(subadmin[i]))
  })
  if (length(subadmin_out) > 0) {
    subadmin_out <- subadmin_out |>
      stats::setNames(paste0('subadmin_', subadmin)) |>
      tibble::as_tibble()
  }

  total_out <- lapply(seq_along(total), function(i) {
    redistmetrics::splits_total(plan, map, !!rlang::sym(total[i]))
  })
  if (length(total_out) > 0) {
    total_out <- total_out |>
      stats::setNames(paste0('total_', total)) |>
      tibble::as_tibble()
  }

  multi_out <- lapply(seq_along(multi), function(i) {
    redistmetrics::splits_multi(plan, map, !!rlang::sym(multi[i]))
  })
  if (length(multi_out) > 0) {
    multi_out <- multi_out |>
      stats::setNames(paste0('multi_', multi)) |>
      tibble::as_tibble()
  }

  out <- list(
    admin_out,
    subadmin_out,
    total_out,
    multi_out
  ) |>
    purrr::discard(.p = function(d) length(d) == 0) |>
    purrr::list_cbind() |>
    dplyr::mutate(
      District = sort(unique(plan)),
      .before = dplyr::everything()
    )

  if (as_gt) {
    out |>
      gt::gt()
  } else {
    out
  }
}
