# Display compactness measures in a table

Display compactness measures in a table

## Usage

``` r
rict_compactness(
  map,
  plan,
  measures = list(comp_polsby = redistmetrics::comp_polsby, comp_schwartz =
    redistmetrics::comp_schwartz, comp_reock = redistmetrics::comp_reock, comp_ch =
    redistmetrics::comp_ch),
  as_gt = TRUE
)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- measures:

  a list of named functions to score compactness

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_compactness(map = wv, plan = wv$cd_2020)


  

District
```

Polsby-Popper

Schwartzberg

Reock

Convex Hull

1

35.0%

59.2%

46.8%

79.6%

2

17.4%

41.7%

26.7%

50.1%
