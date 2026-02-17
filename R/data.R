#' West Virginia Geographic Data
#'
#' This file contains demographic, partisan, and geographic data for West Virginia at the
#' county level.
#'
#' @name wv
#' @concept data
#' @format `redist_map` object
#' \describe{
#' \item{\code{GEOID}}{US Census Geographic Identifier}
#' \item{\code{NAME}}{County name}
#' \item{\code{pop_hisp}}{Hispanic population}
#' \item{\code{pop_white}}{White, non-Hispanic population}
#' \item{\code{pop_black}}{Black, non-Hispanic population}
#' \item{\code{pop_aian}}{American Indian and Alaskan Native, non-Hispanic population}
#' \item{\code{pop_asian}}{Asian, non-Hispanic population}
#' \item{\code{pop_nhpi}}{Native Hawaiian and Pacific Islander, non-Hispanic population}
#' \item{\code{pop_other}}{Other, non-Hispanic population}
#' \item{\code{pop_two}}{Two or More Races, non-Hispanic population}
#' \item{\code{vap}}{voting age population}
#' \item{\code{vap_hisp}}{Hispanic voting age population}
#' \item{\code{vap_white}}{White, non-Hispanic voting age population}
#' \item{\code{vap_black}}{Black, non-Hispanic voting age population}
#' \item{\code{vap_aian}}{American Indian and Alaskan Native, non-Hispanic voting age population}
#' \item{\code{vap_asian}}{Asian, non-Hispanic voting age population}
#' \item{\code{vap_nhpi}}{Native Hawaiian and Pacific Islander, non-Hispanic voting age population}
#' \item{\code{vap_other}}{Other, non-Hispanic voting age population}
#' \item{\code{vap_two}}{Two or More Races, non-Hispanic voting age population}
#' \item{\code{cd_2010}}{2010 congressional district lines smoothed to the county level}
#' \item{\code{cd_2020}}{2020 congressional district lines}
#' \item{\code{pre_20_dem_bid}}{votes for Biden 2020, President (D)}
#' \item{\code{pre_20_rep_tru}}{votes for Trump 2020, President (R)}
#' \item{\code{arv_20}}{average Republican vote in 2020}
#' \item{\code{adv_20}}{average Democratic vote in 2020}
#' \item{\code{nrv}}{normal Republican vote}
#' \item{\code{ndv}}{normal Democratic vote}
#' \item{\code{adj}}{adjacency list, zero-indexed}
#' \item{\code{sample_1}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_2}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_3}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_4}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_5}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_6}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_7}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_8}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_9}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_10}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_11}}{random sampled plan from `redist` 50 states project}
#' \item{\code{sample_12}}{random sampled plan from `redist` 50 states project}
#' \item{\code{geometry}}{sf geometry}
#' }
#'
#' @examples
#' data(wv)
NULL

#' West Virginia Redistricting Plans
#'
#' This file contains 10 sampled plans from the ALARM Project 50 states project
#' and the 2020 congressional plan for WV.
#'
#' @name wv_plans
#' @concept data
#' @format `redist_plans` object
#' \describe{
#' \item{\code{draw}}{draw identifier}
#' \item{\code{district}}{district number}
#' \item{\code{total_pop}}{Total population}
#' \item{\code{total_vap}}{voting age population}
#' \item{\code{plan_dev}}{Maximum deviation from perfect population parity}
#' \item{\code{comp_edge}}{Fraction of Edges Kept compactness}
#' \item{\code{comp_polsby}}{Polsby Popper compactness}
#' \item{\code{pop_white}}{White, non-Hispanic population}
#' \item{\code{pop_black}}{Black, non-Hispanic population}
#' \item{\code{pop_hisp}}{Hispanic population}
#' \item{\code{pop_aian}}{American Indian and Alaskan Native, non-Hispanic population}
#' \item{\code{pop_asian}}{Asian, non-Hispanic population}
#' \item{\code{pop_nhpi}}{Native Hawaiian and Pacific Islander, non-Hispanic population}
#' \item{\code{pop_other}}{Other, non-Hispanic population}
#' \item{\code{pop_two}}{Two or More Races, non-Hispanic population}
#' \item{\code{vap_hisp}}{Hispanic voting age population}
#' \item{\code{vap_white}}{White, non-Hispanic voting age population}
#' \item{\code{vap_black}}{Black, non-Hispanic voting age population}
#' \item{\code{vap_aian}}{American Indian and Alaskan Native, non-Hispanic voting age population}
#' \item{\code{vap_asian}}{Asian, non-Hispanic voting age population}
#' \item{\code{vap_nhpi}}{Native Hawaiian and Pacific Islander, non-Hispanic voting age population}
#' \item{\code{vap_other}}{Other, non-Hispanic voting age population}
#' \item{\code{vap_two}}{Two or More Races, non-Hispanic voting age population}
#' \item{\code{pre_20_dem_bid}}{votes for Biden 2020, President (D)}
#' \item{\code{pre_20_rep_tru}}{votes for Trump 2020, President (R)}
#' \item{\code{arv_20}}{average Republican vote in 2020}
#' \item{\code{adv_20}}{average Democratic vote in 2020}#' \item{\code{nrv}}{normal Republican vote}
#' \item{\code{ndv}}{normal Democratic vote}
#' \item{\code{ndshare}}{normal Democratic share in the district}
#' \item{\code{e_dvs}}{expected Democratic share in the district}
#' \item{\code{pr_dem}}{proportion of districts where Democrats win reconstructed elections}
#' \item{\code{e_dem}}{expected number of Democratic seats}
#' \item{\code{pbias}}{partisan bias}
#' \item{\code{egap}}{efficiency gap}
#' }
#'
#' @examples
#' data(wv_plans)
NULL
