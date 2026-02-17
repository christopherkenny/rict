test_that('rict_splits returns gt', {
  result <- rict_splits(map = wv, plan = wv$cd_2020, admin = 'state')
  expect_s3_class(result, 'gt_tbl')
})

test_that('rict_splits returns tibble when as_gt = FALSE', {
  result <- rict_splits(map = wv, plan = wv$cd_2020, admin = 'state', as_gt = FALSE)
  expect_s3_class(result, 'tbl_df')
  expect_true('District' %in% names(result))
})
