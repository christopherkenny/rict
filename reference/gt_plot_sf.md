# Add `sf` Geometry Plots to a `gt`

Add `sf` Geometry Plots to a `gt`

## Usage

``` r
gt_plot_sf(tab, name, height = 100, ...)
```

## Arguments

- tab:

  A `gt` table with class `gt::gt_tbl`

- name:

  Name for `sf` column in `gt`

- height:

  height, in pixels, of each image. Default is 100

- ...:

  additional arguments passed on to `geom_sf()`

## Value

A [gt::gt](https://gt.rstudio.com/reference/gt.html)

## Examples

``` r
wv_dist <- wv |>
  dplyr::group_by(cd_2020) |>
  dplyr::summarize()
gt::gt(wv_dist) |> gt_plot_sf()


  

cd_2020
```
