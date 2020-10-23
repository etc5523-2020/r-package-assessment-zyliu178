test_that("plot_city", {
  testthat::expect_equal(plot_city(cov_china, "Ankang"),
                         renderPlot({
                           cov_china %>% filter(cityEnglishName == "Ankang",
                                                month <=3) %>%
                             ggplot(aes(date, city_confirmedCount)) +
                             geom_point(aes(color = "#60B0DD")) +
                             geom_smooth(aes(color = "#21618C"), se = FALSE) +
                             theme(legend.title = element_blank()) +
                             xlab("Date") +
                             theme_light() +
                             ylab("Total confirmed cases") +
                             theme(legend.position = "none")+
                             ggtitle("Ankang")
                         })
)})
