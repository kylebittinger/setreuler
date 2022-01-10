
<!-- README.md is generated from README.Rmd. Please edit that file -->

# setreuler

<!-- badges: start -->
<!-- badges: end -->

The goal of setreuler is to draw boxy Euler diagrams.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("kylebittinger/setreuler")
```

## Example

``` r
library(tidyverse)
```

This is a basic example which shows you how to solve a common problem:

``` r
myset_data <- tibble::tibble(
  label = LETTERS[1:11],
  setA = rep(c(T, F), c(10, 1)),
  setB = rep(c(F, T), c(5, 6)))

myset_coords <- myset_data %>%
  summarize(setreuler_coordinates(setA, setB, offset = 0.1, width = 2))
```

``` r
myset_coords %>%
  setreuler_plot(radius = grid::unit(2, "mm"))
```

<img src="man/figures/README-example_plot-1.png" width="100%" />
