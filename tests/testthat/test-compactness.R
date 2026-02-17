test_that('rict_compactness returns gt', {
  result <- rict_compactness(map = wv, plan = wv$cd_2020)
  expect_s3_class(result, 'gt_tbl')
})

test_that('rict_compactness returns tibble when as_gt = FALSE', {
  result <- rict_compactness(map = wv, plan = wv$cd_2020, as_gt = FALSE)
  expect_s3_class(result, 'tbl_df')
  expect_true('District' %in% names(result))
  expect_true(all(c('comp_polsby', 'comp_schwartz', 'comp_reock', 'comp_ch') %in% names(result)))
})
