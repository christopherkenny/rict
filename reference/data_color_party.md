# Color Columns with Partisan Scales

Color Columns with Partisan Scales

## Usage

``` r
data_color_party(tab, columns = gt::everything(), ...)
```

## Arguments

- tab:

  A `gt` table with class `gt::gt_tbl`

- columns:

  the columns to color with partisan colors

- ...:

  additional arguments passed on to
  [`gt::data_color()`](https://gt.rstudio.com/reference/data_color.html)

## Value

A [gt::gt](https://gt.rstudio.com/reference/gt.html)

## Examples

``` r
rict(wv_plans, 'cd_2020') |>
  data_color_party(columns = 'e_dvs')


  

district
```
