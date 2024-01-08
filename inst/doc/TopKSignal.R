## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup_cran---------------------------------------------------------------
#install.packages("TopKSignal")
library(TopKSignal)

## ----setup_dev----------------------------------------------------------------
# install.packages("devtools")
# library(devtools)
# install_github("pievos101/TopKSignal")
library(TopKSignal)

## -----------------------------------------------------------------------------
#install.packages("TopKSignal")
library("TopKSignal")
set.seed(1421)
p = 8
n = 10
input <- generate.rank.matrix(p, n)
rownames(input$R.input) <- c("a","b","c","d","e","f","g","h")

## -----------------------------------------------------------------------------
input$R.input

## -----------------------------------------------------------------------------
input$theta.true

## -----------------------------------------------------------------------------
rank(-input$theta.true)

## -----------------------------------------------------------------------------
input$sigmas

## -----------------------------------------------------------------------------
input$matrixNoise

## -----------------------------------------------------------------------------
#estimatedSignal <- estimateTheta(R.input = input$R.input, num.boot = 50, b = 0.1, solver = "gurobi", type = "restrictedQuadratic", bootstrap.type = "poisson.bootstrap",nCore = 1)
# For the above call Gurobi must be installed.
data(estimatedSignal)

## -----------------------------------------------------------------------------
estimatedSignal$estimation

## -----------------------------------------------------------------------------
rank(-estimatedSignal$estimation$signal.estimate)

## -----------------------------------------------------------------------------
estimatedSignal$estimatedMatrixNoise

## -----------------------------------------------------------------------------
estimatedSignal$allBootstraps

## -----------------------------------------------------------------------------
estimatedSignal$time

## ----fig.height=4,fig.width=6-------------------------------------------------
vp <- violinPlot(estimation = estimatedSignal,trueSignal = input$theta.true,title = "Violin plot")
vp

