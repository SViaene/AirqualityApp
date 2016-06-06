library(datasets)
airData <- airquality[complete.cases(airquality),]

Solar.R <- FALSE
Wind    <- FALSE
Temp    <- FALSE
Month   <- FALSE

modelData <- data.frame(airData$Ozone)
names(modelData) <- "Ozone"

if (Solar.R) {
        modelData <- cbind(modelData, airData$Solar.R)
}
if (Wind){
        modelData <- cbind(modelData, airData$Wind)
}
if (Temp){
        modelData <- cbind(modelData, airData$Temp)
} 
if (Month){
        modelData <- cbind(modelData, airData$Month)
} 
if (ncol(modelData) < 2) {
        print('You must select at least one option!')
}

model <- glm(Ozone ~ ., data = modelData)

predictions <- predict(model, newdata = modelData)
mean_dev <- sqrt(mean((modelData$Ozone - predictions)^2))

plot(modelData$Ozone ~ predictions, 
     main="Your model", ylab = "Observed Ozone (ppb)", xlab="Model Ozone prediction (ppb)",
     xlim=c(-10, 150), ylim=c(-10,150))
abline(a=0, b=1)
text(100,0,labels = paste("Average deviation:",round(mean_dev, digits = 1)))
