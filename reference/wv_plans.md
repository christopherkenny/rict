# West Virginia Redistricting Plans

This file contains 10 sampled plans from the ALARM Project 50 states
project and the 2020 congressional plan for WV.

## Format

`redist_plans` object

- `draw`:

  draw identifier

- `district`:

  district number

- `total_pop`:

  Total population

- `total_vap`:

  voting age population

- `plan_dev`:

  Maximum deviation from perfect population parity

- `comp_edge`:

  Fraction of Edges Kept compactness

- `comp_polsby`:

  Polsby Popper compactness

- `pop_white`:

  White, non-Hispanic population

- `pop_black`:

  Black, non-Hispanic population

- `pop_hisp`:

  Hispanic population

- `pop_aian`:

  American Indian and Alaskan Native, non-Hispanic population

- `pop_asian`:

  Asian, non-Hispanic population

- `pop_nhpi`:

  Native Hawaiian and Pacific Islander, non-Hispanic population

- `pop_other`:

  Other, non-Hispanic population

- `pop_two`:

  Two or More Races, non-Hispanic population

- `vap_hisp`:

  Hispanic voting age population

- `vap_white`:

  White, non-Hispanic voting age population

- `vap_black`:

  Black, non-Hispanic voting age population

- `vap_aian`:

  American Indian and Alaskan Native, non-Hispanic voting age population

- `vap_asian`:

  Asian, non-Hispanic voting age population

- `vap_nhpi`:

  Native Hawaiian and Pacific Islander, non-Hispanic voting age
  population

- `vap_other`:

  Other, non-Hispanic voting age population

- `vap_two`:

  Two or More Races, non-Hispanic voting age population

- `pre_20_dem_bid`:

  votes for Biden 2020, President (D)

- `pre_20_rep_tru`:

  votes for Trump 2020, President (R)

- `arv_20`:

  average Republican vote in 2020

- `adv_20`:

  average Democratic vote in 2020

- `nrv`:

  normal Republican vote

- `ndv`:

  normal Democratic vote

- `ndshare`:

  normal Democratic share in the district

- `e_dvs`:

  expected Democratic share in the district

- `pr_dem`:

  proportion of districts where Democrats win reconstructed elections

- `e_dem`:

  expected number of Democratic seats

- `pbias`:

  partisan bias

- `egap`:

  efficiency gap

## Examples

``` r
data(wv_plans)
```
