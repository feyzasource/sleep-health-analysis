# Sleep Health and Lifestyle Dataset Analysis

## Project Overview
This project explores and analyzes the **Sleep Health and Lifestyle Dataset**, sourced from Kaggle. The dataset contains information about individuals' sleep habits, health metrics, and lifestyle factors. The primary goal is to identify patterns and relationships between sleep quality, physical activity, stress levels, and other variables.

## Dataset Description
The dataset includes the following columns:

1. **Person ID**: An identifier for each individual.
2. **Gender**: The gender of the person (Male/Female).
3. **Age**: The age of the person in years.
4. **Occupation**: The occupation or profession of the person.
5. **Sleep Duration (hours)**: The number of hours the person sleeps per day.
6. **Quality of Sleep (scale: 1-10)**: A subjective rating of the quality of sleep, ranging from 1 to 10.
7. **Physical Activity Level (minutes/day)**: The number of minutes the person engages in physical activity daily.
8. **Stress Level (scale: 1-10)**: A subjective rating of the stress level experienced by the person, ranging from 1 to 10.
9. **BMI Category**: The BMI category of the person (e.g., Underweight, Normal, Overweight).
10. **Blood Pressure (systolic/diastolic)**: The blood pressure measurement of the person, indicated as systolic pressure over diastolic pressure.
11. **Heart Rate (bpm)**: The resting heart rate of the person in beats per minute.
12. **Daily Steps**: The number of steps the person takes per day.
13. **Sleep Disorder**: The presence or absence of a sleep disorder in the person (None, Insomnia, Sleep Apnea).

## Objectives
The main objectives of this project are:

1. To understand the relationship between **sleep quality** and lifestyle factors such as **physical activity**, **stress levels**, and **daily steps**.
2. To explore the impact of health metrics like **BMI**, **blood pressure**, and **heart rate** on sleep duration and quality.
3. To analyze the prevalence of **sleep disorders** in the dataset and their correlations with other variables.
4. To create visualizations that help communicate insights effectively.

## Tools and Libraries
The following tools and libraries are used for data analysis and visualization:

- **RStudio**: For coding and analysis.
- **tidyverse**: For data manipulation and visualization.
- **ggplot2**: For creating plots and graphs.
- **readr**: For importing the dataset.
- **dplyr**: For data wrangling.

## Data Preprocessing
The dataset was preprocessed by:

1. Loading the data using `read_csv()`.
2. Checking for missing values and handling them appropriately.
3. Converting categorical variables (e.g., Gender, BMI Category) into factors.
4. Normalizing numerical variables where necessary.

## Analysis Plan
1. **Exploratory Data Analysis (EDA):**
   - Summary statistics for numerical and categorical columns.
   - Distribution plots for key variables like sleep duration, stress level, and physical activity.

2. **Correlational Analysis:**
   - Investigating relationships between sleep quality and other variables using correlation matrices.

3. **Visualization:**
   - Creating scatter plots, bar charts, and box plots to represent trends and patterns.

4. **Insights:**
   - Identifying key factors affecting sleep quality.
   - Highlighting outliers and interesting observations.

## How to Run the Analysis
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/sleep-health-analysis.git
   ```
2. Open the RStudio project file (`sleep-health-analysis.Rproj`).
3. Run the `analysis.Rmd` file to execute the analysis and generate the report.

## Results
The results and insights from the analysis will be summarized in the final RMarkdown report, which includes visualizations and interpretations.

## Additional Scripts
- `download_data.R`: Downloads the dataset from Kaggle using their API. This is optional and can be used to automate data fetching.

## Acknowledgments
Special thanks to the contributors of the dataset on Kaggle:
[Sleep Health and Lifestyle Dataset](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset).

## License
This project is for educational purposes only. The dataset belongs to its original creators, and appropriate credit is given.

