test_that("rict_contiguity returns gt", {
  result <- rict_contiguity(map = wv, plan = wv$cd_2020)
  expect_s3_class(result, "gt_tbl")
})

test_that("rict_contiguity returns tibble when as_gt = FALSE", {
  result <- rict_contiguity(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_s3_class(result, "tbl_df")
  expect_true(all(c("District", "Pieces") %in% names(result)))
})
