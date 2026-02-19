# West Virginia Geographic Data

This file contains demographic, partisan, and geographic data for West
Virginia at the county level.

## Format

`redist_map` object

- `GEOID`:

  US Census Geographic Identifier

- `NAME`:

  County name

- `pop_hisp`:

  Hispanic population

- `pop_white`:

  White, non-Hispanic population

- `pop_black`:

  Black, non-Hispanic population

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

- `vap`:

  voting age population

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

- `cd_2010`:

  2010 congressional district lines smoothed to the county level

- `cd_2020`:

  2020 congressional district lines

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

- `adj`:

  adjacency list, zero-indexed

- `sample_1`:

  random sampled plan from `redist` 50 states project

- `sample_2`:

  random sampled plan from `redist` 50 states project

- `sample_3`:

  random sampled plan from `redist` 50 states project

- `sample_4`:

  random sampled plan from `redist` 50 states project

- `sample_5`:

  random sampled plan from `redist` 50 states project

- `sample_6`:

  random sampled plan from `redist` 50 states project

- `sample_7`:

  random sampled plan from `redist` 50 states project

- `sample_8`:

  random sampled plan from `redist` 50 states project

- `sample_9`:

  random sampled plan from `redist` 50 states project

- `sample_10`:

  random sampled plan from `redist` 50 states project

- `sample_11`:

  random sampled plan from `redist` 50 states project

- `sample_12`:

  random sampled plan from `redist` 50 states project

- `geometry`:

  sf geometry

## Examples

``` r
data(wv)
```
