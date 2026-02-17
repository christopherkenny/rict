test_that("rict_demographics returns gt", {
  result <- rict_demographics(map = wv, plan = wv$cd_2020)
  expect_s3_class(result, "gt_tbl")
})

test_that("rict_demographics returns tibble when as_gt = FALSE", {
  result <- rict_demographics(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_s3_class(result, "tbl_df")
  expect_true(all(c("District", "pop", "vap") %in% names(result)))
})

test_that("rict_demographics normalizes to proportions", {
  result <- rict_demographics(map = wv, plan = wv$cd_2020, normalize = TRUE, as_gt = FALSE)
  pop_cols <- grep("^pop_", names(result), value = TRUE)
  expect_true(all(result[[pop_cols[1]]] >= 0 & result[[pop_cols[1]]] <= 1))
})

test_that("rict_demographics unnormalized returns counts", {
  result <- rict_demographics(map = wv, plan = wv$cd_2020, normalize = FALSE, as_gt = FALSE)
  expect_true(all(result$pop > 1000))
})
