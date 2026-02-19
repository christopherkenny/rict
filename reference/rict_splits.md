# Display splits data in a table

Display splits data in a table

## Usage

``` r
rict_splits(
  map,
  plan,
  admin = NULL,
  subadmin = NULL,
  total = admin,
  multi = admin,
  as_gt = TRUE
)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- admin:

  column names in `map` without `NA` values to calculate administrative
  splits for

- subadmin:

  column names in `map` with `NA` values to calculate administrative
  splits for

- total:

  column names in `map` without `NA` values to calculate total splits
  for

- multi:

  column names in `map` without `NA` values to calculate multi-splits
  for

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_splits(map = wv, plan = wv$cd_2020, admin = 'state')


  

District
```

admin_state

total_state

multi_state

1

1

1

0

2

1

1

0
