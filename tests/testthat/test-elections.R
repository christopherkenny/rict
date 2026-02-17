test_that("rict_elections returns gt", {
  result <- rict_elections(map = wv, plan = wv$cd_2020)
  expect_s3_class(result, "gt_tbl")
})

test_that("rict_elections returns tibble when as_gt = FALSE", {
  result <- rict_elections(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_s3_class(result, "tbl_df")
  expect_true("District" %in% names(result))
})
