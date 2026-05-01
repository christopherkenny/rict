# Display demographic data in a table

Display demographic data in a table

## Usage

``` r
rict_demographics(map, plan, normalize = TRUE, as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- normalize:

  Logical. Should columns be normalized to percentages? Default: `TRUE`.

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt::gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_demographics(map = wv, plan = wv$cd_2020)


  


District
```
