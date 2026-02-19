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

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_demographics(map = wv, plan = wv$cd_2020)


  


District
```

Total Population

Voting Age Population

Pop.

White

Black

Hispanic

Native

Asian

NH/PI

Other

Two+

VAP

White

Black

Hispanic

Native

Asian

NH/PI

Other

Two+

1

896,067

89.9%

4.1%

1.3%

0.2%

0.7%

0.0%

0.2%

3.7%

715,682

90.8%

4.1%

1.1%

0.2%

0.7%

0.0%

0.2%

3.0%

2

897,649

88.4%

3.2%

2.6%

0.2%

1.0%

0.0%

0.3%

4.4%

717,250

89.7%

3.2%

2.2%

0.2%

1.0%

0.0%

0.2%

3.5%
