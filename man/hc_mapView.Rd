% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/highcharts-api.R
\name{hc_mapView}
\alias{hc_mapView}
\title{Mapview options for highcharter objects}
\usage{
hc_mapView(hc, ...)
}
\arguments{
\item{hc}{A \code{highchart} \code{htmlwidget} object.}

\item{...}{Arguments defined in \url{https://api.highcharts.com/highmaps/mapView}.}
}
\description{
The mapView options control the initial view of the chart, and how
projection is set up for raw geoJSON maps (beta as of v9.3).
To set the view dynamically after chart generation, see
mapView.setView.
}
\examples{

map <- hcmap()

map

map |> 
  hc_mapView(zoom = 10) |> 
  hc_mapNavigation(enabled = TRUE)
  
  

}
