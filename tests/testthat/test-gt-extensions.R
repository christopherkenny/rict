test_that("data_color_party returns gt_tbl", {
  tab <- rict(wv_plans, "cd_2020")
  result <- data_color_party(tab, columns = "e_dvs")
  expect_s3_class(result, "gt_tbl")
})

test_that("gt_get_data extracts data", {
  tab <- rict(wv)
  result <- gt_get_data(tab)
  expect_s3_class(result, "tbl_df")
})

test_that("gt_hide_lists returns gt_tbl", {
  tab <- gt::gt(wv)
  result <- gt_hide_lists(tab)
  expect_s3_class(result, "gt_tbl")
})

test_that("gt_add_column adds a column", {
  tab <- rict(wv)
  result <- gt_add_column(tab, new_col, 1)
  data <- gt_get_data(result)
  expect_true("new_col" %in% names(data))
})
