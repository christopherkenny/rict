# Display boundary information in a table

Identifies neighboring precincts along a district boundary and displays
them as adjacent pairs, with one row per pair of neighboring precincts
from different districts.

## Usage

``` r
rict_boundary(map, plan, seam, columns, adj_col = "adj", as_gt = TRUE)
```

## Arguments

- map:

  A `redist_map` or `sf` object.

- plan:

  Column in `map` or vector of district assignments.

- seam:

  Pair of districts in `plan` to focus on.

- columns:

  columns in `map` to display in the output

- adj_col:

  Name of column in `map` that contains adjacency information.

- as_gt:

  Logical. Should output be a `gt` table? Default: `TRUE`.

## Value

a `gt::gt_tbl` if `as_gt = TRUE`, otherwise a
[tibble::tibble](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
rict_boundary(map = wv, plan = wv$cd_2020, seam = c(1, 2), columns = pop)


  

District
```

Precinct

pop

pop

Precinct

District

1

24

7408

8444

22

2

1

24

7408

17033

46

2

1

24

7408

7808

47

2

1

26

6143

27932

6

2

1

26

6143

10976

23

2

1

26

6143

14299

28

2

1

32

12447

17033

46

2

1

34

7869

27932

6

2

1

41

5194

84296

8

2

1

41

5194

8444

22

2

1

48

6229

8444

22

2

1

51

8378

27932

6

2

1

51

8378

17033

46

2

1

51

8378

23816

49

2

1

52

27791

84296

8

2
