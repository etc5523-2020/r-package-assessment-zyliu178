test_that("select_city", {
  testthat::expect_equal(select_city(cov_china),
                         selectInput("cityInput", "Which city do you want to display?",
                                        choices = unique(cov_china$cityEnglishName),
                                        selected="Ankang", multiple =FALSE))
})