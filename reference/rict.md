# Create a Summary Table from Redistricting Data

Creates a formatted [gt::gt](https://gt.rstudio.com/reference/gt.html)
table summarizing redistricting plans or maps.

## Usage

``` r
rict(x, plan, ...)
```

## Arguments

- x:

  A `redist_map` or `redist_plans` object.

- plan:

  For `redist_plans`: draw name or number to display. For `redist_map`:
  column or vector of district assignments (defaults to existing plan
  via
  [`redist::get_existing()`](http://alarm-redist.org/redist/reference/get_existing.md)).

- ...:

  Additional arguments passed to methods.

## Value

A [gt::gt](https://gt.rstudio.com/reference/gt.html) table

## Examples

``` r
rict(wv)


  

district
```
