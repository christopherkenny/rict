# Extract data from a `gt`

Extract data from a `gt`

## Usage

``` r
gt_get_data(tab)
```

## Arguments

- tab:

  A `gt` table with class `gt_tbl`

## Value

A [dplyr::tibble](https://dplyr.tidyverse.org/reference/reexports.html)

## Examples

``` r
rict(wv) |> gt_get_data()
#> # A tibble: 2 × 40
#>   district    pop pop_white pop_black pop_hisp pop_aian pop_asian pop_nhpi
#>      <int>  <dbl>     <dbl>     <dbl>    <dbl>    <dbl>     <dbl>    <dbl>
#> 1        1 896067    805369     36345    11331     1632      6132      155
#> 2        2 897649    793465     28404    23496     1555      8771      274
#> # ℹ 32 more variables: pop_other <dbl>, pop_two <dbl>, vap <dbl>,
#> #   vap_white <dbl>, vap_black <dbl>, vap_hisp <dbl>, vap_aian <dbl>,
#> #   vap_asian <dbl>, vap_nhpi <dbl>, vap_other <dbl>, vap_two <dbl>,
#> #   cd_2010 <int>, cd_2020 <int>, pre_20_rep_tru <dbl>, pre_20_dem_bid <dbl>,
#> #   ndv <dbl>, adv_20 <dbl>, nrv <dbl>, arv_20 <dbl>, sample_1 <int>,
#> #   sample_2 <int>, sample_3 <int>, sample_4 <int>, sample_5 <int>,
#> #   sample_6 <int>, sample_7 <int>, sample_8 <int>, sample_9 <int>, …
```
