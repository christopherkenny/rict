# Display population data by administrative unit in a table

Display population data by administrative unit in a table

## Usage

``` r
rict_component(map, plan, admin, as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- admin:

  column names in `map` without `NA` values to calculate administrative
  splits for

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_component(map = wv, plan = wv$cd_2020, admin = 'county')


  

county
```

pop

1

005

21,809

007

12,447

011

94,350

013

6,229

015

8,051

019

40,488

021

7,408

025

32,977

035

27,791

039

180,745

043

20,463

045

32,567

047

19,111

053

25,453

055

59,664

059

23,568

063

12,376

067

24,604

071

6,143

075

7,869

079

57,440

081

74,591

087

14,028

089

11,959

099

38,982

101

8,378

105

5,194

109

21,382

2

001

15,465

003

122,076

009

22,559

017

7,808

023

10,976

027

23,093

029

29,095

031

14,299

033

65,921

037

57,701

041

17,033

049

56,205

051

30,591

057

26,938

061

105,822

065

17,063

069

42,425

073

7,653

077

34,216

083

27,932

085

8,444

091

16,705

093

6,762

095

8,313

097

23,816

103

14,442

107

84,296
