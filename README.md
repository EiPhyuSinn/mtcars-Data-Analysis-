# mtcars Data Analysis

This R script performs analysis and visualization of the `mtcars` dataset, exploring various attributes and relationships between variables. It includes summary statistics, histogram plots, box plots, scatter plots, and linear regression modeling.

## Overview

The script performs the following tasks:

1. **Data Exploration:** Loads the `mtcars` dataset and examines its structure, dimensions, and summary statistics.

2. **Visualization:** Creates visualizations such as histograms, box plots, scatter plots, and a scatter plot matrix to explore the distribution and relationships of variables in the dataset.

3. **Linear Regression Modeling:** Fits multiple linear regression models to predict miles per gallon (`mpg`) based on predictor variables like displacement (`disp`) and horsepower (`hp`). It also fits logistic and Poisson regression models for binary and count outcomes, respectively.

4. **Model Evaluation:** Provides summaries of the fitted regression models to assess their performance and interpret the coefficients.

5. **Visualization:** Creates additional visualizations using the `ggplot2` package to visualize relationships between variables and explore patterns in the data.

## Libraries Used

The script utilizes the following R packages:

- `ggplot2`: For creating advanced visualizations.
- `stats`: For statistical functions and linear regression modeling.
- `base`: For basic R functions and data manipulation.

## Usage

To use the script:

1. Load the script into your R environment.

2. Ensure that the required packages are installed by running:

   ```r
   install.packages("ggplot2")
