# #  Ex 1
# options(highcharter.rjson = FALSE)
# 
# n <- 50000
# 
# x <- sin(4*2*pi*seq(n)/n) + rnorm(n)/10
# 
# x <- round(x, 3)
# 
# plot(x)
# 
# hc1 <- highchart() |>
#   hc_chart(zoomType = "x") |>
#   hc_add_series(data = x) |> 
#   hc_title(text = "No boost") |> 
#   hc_boost(
#     enabled = FALSE # Default
#   )
# 
# hc1
# 
# # Boost is a stripped-down renderer-in-a-module for Highcharts. It bypasses
# # some of the standard Highcharts features (such as animation), and focuses
# # on pushing as many points as possible as quickly as possible.
# 
# hc2 <- highchart() |>
#   hc_chart(zoomType = "x") |>
#   hc_add_series(data = x) |> 
#   hc_title(text = "With boost") |> 
#   hc_boost(enabled = TRUE)
# 
# hc2
# 
# 
# # # Ex 2
# # library(MASS)
# # 
# # n <- 20000
# # 
# # sigma <- matrix(c(10,3,3,2),2,2)
# # sigma
# # 
# # mvr <- round(mvrnorm(n, rep(c(0, 0)), sigma), 2)
# # 
# # vx <- ceiling(1+abs(max(mvr[, 1])))
# # vy <- ceiling(1+abs(max(mvr[, 2])))
# # 
# # # unnamed list
# # ds <- list_parse2(as.data.frame(mvr))
# # 
# # highchart() |>
# #   hc_chart(zoomType = "xy") |>
# #   hc_xAxis(min = -vx, max = vx) |> 
# #   hc_yAxis(min = -vy, max = vy) |> 
# #   hc_add_series(
# #     data = ds, #list
# #     type = "scatter",
# #     name = "A lot of points!",
# #     color = 'rgba(0,0,0,0.1)',
# #     marker = list(radius = 2)
# #     ) |> 
# #   hc_boost(
# #     enabled = TRUE 
# #   )
# # 
# # dat <- as.data.frame(mvr)
# # names(dat) <- c("x", "y")
# # 
# # highchart() |>
# #   hc_chart(zoomType = "xy") |>
# #   hc_xAxis(min = -vx, max = vx) |> 
# #   hc_yAxis(min = -vy, max = vy) |> 
# #   hc_add_series(
# #     data = dat,
# #     type = "scatter",
# #     hcaes(x, y),
# #     name = "A lot of points!",
# #     color = 'rgba(0,0,0,0.1)',
# #     marker = list(radius = 2)
# #   ) |> 
# #   hc_boost(enabled = TRUE)
# # 
# # # Ex3
# # N <- 1000000
# # n <- 5
# # s <- seq(n)
# # s <- s/(max(s) + min(s))
# # s <- round(s, 2)
# # 
# # series <- s |>
# #   purrr::map(~ stats::arima.sim(round(N/n), model = list(ar = .x)) + .x * n * 20) |>
# #   purrr::map(as.vector) |>
# #   purrr::map(round, 2) |>
# #   purrr::map(~ list(data = .x))
# # 
# # highchart() |>
# #   hc_add_series_list(series) |>
# #   hc_chart(zoomType = "x") |> 
# #   hc_boost(enabled = TRUE)
