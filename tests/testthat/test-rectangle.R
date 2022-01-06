a <- c(
  T, T, T, # only a
  T, T, T, #
  T, T, T, # a and b
  T, T, T, #
  T, T, T, #
  F, F, F) # only b

b <- c(
  F, F, F, # only a
  F, F, F, #
  T, T, T, # a and b
  T, T, T, #
  T, T, T, #
  T, T, T) # only b

test_that("setreuler_coordinates provides coordinates", {
  res <- setreuler_coordinates(a, b, width = 3, offset = 0)
  print(res)
  expect_equal(colnames(res), c("x", "y", "group"))
  expect_equal(res$x, c(0, 0, 3, 3, 0, 0, 3, 3))
  expect_equal(res$y, c(1, 6, 6, 1, 0, 4, 4, 0))
  expect_equal(res$group, rep(c("A", "B"), each=4))
})
