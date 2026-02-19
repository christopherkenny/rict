# Create Plots for Common Compactness Metrics

Create Plots for Common Compactness Metrics

## Usage

``` r
plot_compactness(
  shp,
  plan,
  measure = c("Polsby Popper", "Schwartzberg", "Reock", "Convex Hull", "Length Width",
    "Skew", "Box Reock"),
  fill_color = "deeppink"
)
```

## Arguments

- shp:

  An `sf` object

- plan:

  A numeric vector with one entry for each precinct in `shp`.

- measure:

  A character indicating which measure to plot. Default is
  `'Polsby Popper'`.

- fill_color:

  hex or color name to fill the shape. A second entry can be provided to
  fill the background.

## Value

list of `ggplot2` plots

## Examples

``` r
plot_compactness(wv, wv$cd_2020)
#> [[1]]

#> 
#> [[2]]

#> 
```
