test_that("format_compactness replaces known names", {
  expect_equal(format_compactness("comp_polsby"), "Polsby-Popper")
  expect_equal(format_compactness("comp_reock"), "Reock")
  expect_equal(format_compactness("comp_ch"), "Convex Hull")
  expect_equal(format_compactness("comp_schwartz"), "Schwartzberg")
})

test_that("format_compactness passes through unknown names", {
  expect_equal(format_compactness("comp_unknown"), "comp_unknown")
})

test_that("format_demog_string replaces known names", {
  expect_equal(format_demog_string("white"), "White")
  expect_equal(format_demog_string("hisp"), "Hispanic")
  expect_equal(format_demog_string("aian"), "Native")
  expect_equal(format_demog_string("nhpi"), "NH/PI")
})

test_that("format_election_names replaces known names", {
  expect_equal(format_election_names("pre"), "Pres")
  expect_equal(format_election_names("uss"), "US Sen")
  expect_equal(format_election_names("gov"), "Gov")
})
