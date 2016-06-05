## Airquality Shiny Application
*Sebastien Viaene* -- Jun 5 2016


This application demonstrates how several weather parameters can influence the airquality levels. We use the standard R airquality dataset, which takes daily ozone measurements (in ppb) from New York.

### Application inputs & outputs

The application inputs works through checkboxes. To include a parameter (solar radiation , wind, temperature, month), simply check the box next to it. The model will not be constructed untill the 'Update model' button is pushed. 

Pusing the 'Update model' button will generate a model and plot the result. The plot shows the predicted ozone level of the model versus the true, measured ozone levels. A line with slope 1 is also drawn. Ideally, the datapoints should lie on this line. To give an estimate of how well each model works, the 'average deviation' is also shown on the plot. This reflects the mean difference between the observed and predicted ozone level, in units of ppb.

### Model specifics

To construct a model for the airquality dataset, only complete cases are used. A generalized linear model (the R glm-function) was used to model the chosen parameters and their link to the ozone levels. Only the checked parameters were used to construct the model.

After the modelling, a plot and average deviation are created and passed to the output.