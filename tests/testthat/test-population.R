test_that("rict_population returns gt", {
  result <- rict_population(map = wv, plan = wv$cd_2020)
  expect_s3_class(result, "gt_tbl")
})

test_that("rict_population returns tibble when as_gt = FALSE", {
  result <- rict_population(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_s3_class(result, "tbl_df")
  expect_true(all(c("District", "Population", "deviation", "pct_deviation") %in% names(result)))
})

test_that("rict_population deviation sums to zero", {
  result <- rict_population(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_equal(sum(result$deviation), 0, tolerance = 1)
})
