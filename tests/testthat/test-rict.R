test_that("rict works with redist_map", {
  result <- rict(wv)
  expect_s3_class(result, "gt_tbl")
})

test_that("rict works with redist_plans", {
  result <- rict(wv_plans, "cd_2020")
  expect_s3_class(result, "gt_tbl")
})
