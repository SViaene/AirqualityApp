---
title       : Make your own airquality model    
subtitle    : A shiny app
author      : Sebastien Viaene
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny]            # {mathjax, quiz, bootstrap, shiny}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Context

The quality of the outside air is vital to public health. Ozone is one of the metrics that influences the quality of the air.

- Need active monitoring of ozone
- Need additional weather metrics
- Need to build thrustworthy predictions for ozone levels
- Need public awereness of what influences air quality

--- .class #id 

## A shiny web application

A simple web application to demonstrate the weather influence on ozone levels:

https://sviaene.shinyapps.io/shiny/

- Data: New York Air Quality Measurements (standard R dataset)
- Possible input: Solar radiation, wind, temperature, month (i.e. seasonal variability)
- Model: A generalized linear model to predict Ozone from the chosen parameters
- Output: Model vs observations plot and average deviation

--- .class #id 

## Input

- Interactive checkbox to choose which parameters to use in the model
- Update model button to start/update the actual modelling

<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <div class="checkbox">
          <label>
            <input id="Solar.R" type="checkbox" checked="checked"/>
            <span>Solar radiation</span>
          </label>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <div class="checkbox">
          <label>
            <input id="Wind" type="checkbox"/>
            <span>Wind</span>
          </label>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <div class="checkbox">
          <label>
            <input id="Temp" type="checkbox"/>
            <span>Temperature</span>
          </label>
        </div>
      </div>
      <div class="form-group shiny-input-container">
        <div class="checkbox">
          <label>
            <input id="Month" type="checkbox"/>
            <span>Month</span>
          </label>
        </div>
      </div>
      <button id="update" type="button" class="btn btn-default action-button">Update model</button>
    </form>
  </div>
  <div class="col-sm-8"></div>
</div>

--- &twocol w1:50% w2:50%
### Output examples
*** =left

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

*** =right

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png)






