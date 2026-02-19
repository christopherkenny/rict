# Add a column to a `gt`

Add a column to a `gt`

## Usage

``` r
gt_add_column(tab, .col, .val, ...)
```

## Arguments

- tab:

  A `gt` table with class `gt_tbl`

- .col:

  column name

- .val:

  value to add

- ...:

  additional arguments to pass to
  [dplyr::add_row](https://dplyr.tidyverse.org/reference/reexports.html)

## Value

A [gt::gt](https://gt.rstudio.com/reference/gt.html)

## Examples

``` r
rict(wv) |> gt_add_column(r, 3)
#> Warning: There was 1 warning in `dplyr::summarize()`.
#> ℹ In argument: `dplyr::across(where(is.numeric), sum, na.rm = TRUE)`.
#> ℹ In group 1: `district = 1`.
#> Caused by warning:
#> ! The `...` argument of `across()` is deprecated as of dplyr 1.1.0.
#> Supply arguments directly to `.fns` through an anonymous function instead.
#> 
#>   # Previously
#>   across(a:b, mean, na.rm = TRUE)
#> 
#>   # Now
#>   across(a:b, \(x) mean(x, na.rm = TRUE))
#> ℹ The deprecated feature was likely used in the redist package.
#>   Please report the issue at <https://github.com/alarm-redist/redist/issues>.


  

district
```

pop

pop_white

pop_black

pop_hisp

pop_aian

pop_asian

pop_nhpi

pop_other

pop_two

vap

vap_white

vap_black

vap_hisp

vap_aian

vap_asian

vap_nhpi

vap_other

vap_two

cd_2010

cd_2020

pre_20_rep_tru

pre_20_dem_bid

ndv

adv_20

nrv

arv_20

sample_1

sample_2

sample_3

sample_4

sample_5

sample_6

sample_7

sample_8

sample_9

sample_10

sample_11

sample_12

state

r

1

896067

805369

36345

11331

1632

6132

155

2136

32967

715682

649695

29039

7866

1426

5030

116

1294

21216

73

28

273523

112947

112947

112947

273523

273523

37

31

36

35

38

33

35

36

31

31

37

36

WV

3

2

897649

793465

28404

23496

1555

8771

274

2516

39168

717250

643345

22963

15617

1335

7203

217

1687

24883

35

54

271859

123037

123037

123037

271859

271859

52

53

50

53

51

51

53

53

53

52

51

53

WV

3
