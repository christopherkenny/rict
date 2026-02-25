test_that('rict_boundary returns gt', {
  result <- rict_boundary(map = wv, plan = wv$cd_2020, seam = c(1, 2), columns = pop)
  expect_s3_class(result, 'gt_tbl')
})

test_that('rict_boundary returns tibble when as_gt = FALSE', {
  result <- rict_boundary(map = wv, plan = wv$cd_2020, seam = c(1, 2), columns = pop, as_gt = FALSE)
  expect_true('District' %in% names(result))
})

test_that('rict_boundary errors without seam', {
  expect_error(rict_boundary(map = wv, plan = wv$cd_2020))
})
