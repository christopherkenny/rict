# Display population parity in a table

Display population parity in a table

## Usage

``` r
rict_population(map, plan, as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_population(map = wv, plan = wv$cd_2020)


  


District
```

Population

Deviation

People

%

1

896,067

−791

−0.1%

2

897,649

791

0.1%
