# Display electoral data in a table

Display electoral data in a table

## Usage

``` r
rict_elections(map, plan, as_gt = TRUE)
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
rict_elections(map = wv, plan = wv$cd_2020)


  


District
```

Average Dem. Vote Share

Contests Dem. Vote Share

Cycle Dem. Vote Share

Pre-Average

Pres 2020

2020

1

29.2%

29.2%

29.2%

2

31.2%

31.2%

31.2%
