test_that('Scalar integers', {
  expect_true(is_plausible(5, min = 0, max = 10))
  expect_false(is_plausible(-1, min = 0, max = 1))
})

test_that('Integer vectors', {
  expect_equal(is_plausible(0:10, min = 0, max = 10),
               rep(TRUE, 11))
  expect_equal(is_plausible(-1:2, min = 0, max = 1),
               c(F, T, T, F))
})

test_that('Handle unusual or missing inputs', {
  expect_error(is_plausible('2', min = 0, max = 10))
  expect_error(is_plausible(min = 0, max = 10))
  expect_error(is_plausible(2, min = "0", max = 10))
  expect_error(is_plausible(2, min = 0, max = "10"))
})