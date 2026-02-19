# Color Columns with Partisan Scales

Color Columns with Partisan Scales

## Usage

``` r
data_color_party(tab, columns = gt::everything(), ...)
```

## Arguments

- tab:

  A `gt` table with class `gt_tbl`

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

total_pop

chain

pop_overlap

total_vap

plan_dev

comp_edge

comp_polsby

pop_white

pop_black

pop_hisp

pop_aian

pop_asian

pop_nhpi

pop_other

pop_two

vap_white

vap_black

vap_hisp

vap_aian

vap_asian

vap_nhpi

vap_other

vap_two

pre_20_rep_tru

pre_20_dem_bid

adv_20

arv_20

county_splits

ndv

nrv

ndshare

e_dvs

pr_dem

e_dem

pbias

egap

1

896067

NA

1

715682

0.000881968

0.94

0.26271

805369

36345

11331

1632

6132

155

2136

32967

649695

29039

7866

1426

5030

116

1294

21216

273523

112947

112947

273523

0

112947

273523

0.2923

0.2923

0

0

0

0.104

2

897649

NA

1

717250

0.000881968

0.94

0.13358

793465

28404

23496

1555

8771

274

2516

39168

643345

22963

15617

1335

7203

217

1687

24883

271859

123037

123037

271859

0

123037

271859

0.3116

0.3116

0

0

0

0.104
