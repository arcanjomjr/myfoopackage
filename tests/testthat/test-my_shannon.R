test_that("shannon diversity function", {
  expect_equal(my_shannon(1), 0)

  expect_equal(my_shannon(c(1,2,3)),1.01140426)

  expect_type(my_shannon(c(1,2)),"double")

  expect_snapshot_error(my_shannon("a"))
})
