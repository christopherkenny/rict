# Display population data by administrative unit in a table

Display population data by administrative unit in a table

## Usage

``` r
rict_component(map, plan, admin, as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- admin:

  column names in `map` without `NA` values to calculate administrative
  splits for

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt::gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_component(map = wv, plan = wv$cd_2020, admin = 'county')


  

county
```
