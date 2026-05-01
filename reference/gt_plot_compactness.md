# Add Compactness Metric Plots to a `gt`

Add Compactness Metric Plots to a `gt`

## Usage

``` r
gt_plot_compactness(
  tab,
  shp,
  plan,
  measures = guess_comp(tab),
  height = 200,
  ...
)
```

## Arguments

- tab:

  A `gt` table with class `gt::gt_tbl`

- shp:

  An `sf` object

- plan:

  A numeric vector with one entry for each precinct in `shp`.

- measures:

  A character vector indicating which measures to plot. Uses
  `guess_comp()` if not supplied.

- height:

  height, in pixels, of each image. Default is 200.

- ...:

  additional arguments. Not currently passed on.

## Value

A [gt::gt](https://gt.rstudio.com/reference/gt.html)

## Examples

``` r
rict(wv_plans, 'cd_2020') |>
  gt_plot_compactness(wv, wv$cd_2020)


  

district
```
