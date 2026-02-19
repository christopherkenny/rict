# Display contiguity info in a table

Display contiguity info in a table

## Usage

``` r
rict_contiguity(map, plan, adj = NULL, adj_col = "adj", as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- adj:

  An adjacency list (zero-indexed). If provided, used directly instead
  of looking up `adj_col` in `map`.

- adj_col:

  Name of column in `map` that contains adjacency information.

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_contiguity(map = wv, plan = wv$cd_2020)


  

District
```

Pieces

1

1

2

1
