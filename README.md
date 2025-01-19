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

### **Project Workflow and Challenges**

This project explores the Sleep Health and Lifestyle Dataset from Kaggle to understand the relationships between sleep quality, lifestyle factors, and health metrics. Below is a detailed overview of the workflow, challenges encountered, and insights gained during the analysis:

---

### **1. Exploratory Data Analysis (EDA)**
- **Steps:**
  - We analyzed numerical variables such as Sleep Duration, Stress Level, and Physical Activity by plotting their distributions.
  - For categorical variables like Gender and Sleep Disorder, we created bar charts to visualize the data distribution.
  - We examined correlations between variables using a correlation matrix. Notably, we observed a significant relationship between Sleep Duration and Physical Activity.

- **Challenges:**
  - Working with synthetic data posed challenges as it was more regular and structured than real-world data. This made the correlations appear stronger than they might be with real data.
  - Expected relationships between certain variables, such as Stress Level and Sleep Quality, were weaker than anticipated due to the nature of the dataset.

---

### **2. PCA (Principal Component Analysis)**
- **What is PCA?**
  PCA is a technique used to reduce the dimensionality of data by transforming multiple correlated variables into a smaller set of uncorrelated components (principal components).
  
- **Steps:**
  - We applied PCA to the variables Sleep Duration, Physical Activity, and Stress Level.
  - The first two principal components (PC1 and PC2) were selected, as they captured most of the variance in the data.
  - These components simplified the data, making it easier to visualize and analyze.

- **Challenges:**
  - Interpreting PC1 and PC2 was non-trivial, as the components are abstract and represent combinations of the original variables.
  - PCA performed well with the synthetic data, but the results might be less clear when applied to messy real-world datasets.

---

### **3. Splitting the Data**
- **Why split the data?**
  Splitting the data into training and testing sets allows us to train models on one portion of the data and evaluate their performance on unseen data. This ensures the results are generalizable.

- **Steps:**
  - We split both the original dataset and the PCA-transformed dataset into 80% training and 20% testing subsets.
  - This allowed us to compare the performance of models built on the original data versus PCA-transformed data.

---

### **4. Logistic Regression Models**
- **Steps:**
  - A logistic regression model was created using the original dataset to predict BMI Category based on Sleep Duration, Physical Activity Level, and Stress Level.
  - A second logistic regression model was built using the PCA-transformed data, utilizing PC1 and PC2 as predictors.

- **Challenges:**
  - The logistic regression model with the PCA-transformed data was simpler but less interpretable, as PC1 and PC2 do not have direct real-world meanings.
  - Comparing the models' performances required careful metric calculations and visualizations.

---

### **5. Confusion Matrices**
- **What is a Confusion Matrix?**
  - A confusion matrix is a table that shows the number of correct and incorrect predictions made by a model.
  - It includes metrics such as True Positives, False Positives, True Negatives, and False Negatives.

- **Steps:**
  - We generated confusion matrices for both the original and PCA-transformed datasets to evaluate model performance.
  - These matrices helped us understand where each model excelled or struggled.

---

### **6. Performance Metrics**
- **Metrics Used:**
  - **Accuracy:** The proportion of correct predictions.
  - **Precision:** The proportion of predicted positives that are actual positives.
  - **Recall (Sensitivity):** The proportion of actual positives that are correctly predicted.
  - **F1-Score:** A harmonic mean of Precision and Recall.

- **Comparison:**
  - The original dataset generally achieved higher accuracy, but the PCA-transformed data model was faster and still delivered reasonable performance.
  - The performance difference between the two models highlighted the trade-off between simplicity and interpretability.

---

### **7. Insights and Observations**
- **Key Findings:**
  - Physical Activity Level and Stress Level were the most significant factors influencing Sleep Quality.
  - There was no direct relationship between BMI Category and Sleep Duration, but shorter sleep durations were associated with poorer Sleep Quality.
  - PCA simplified the dataset effectively and allowed us to visualize complex relationships.

- **Challenges with Synthetic Data:**
  - Synthetic data's structured nature sometimes exaggerated relationships, which may not hold in real-world datasets.
  - Despite these challenges, the analysis provided valuable insights into the dataset.

- **How Successful Was R for Sleep Health Analysis?**
  - R proved to be an excellent tool for data manipulation, visualization, and modeling.
  - Tools like **ggplot2** and **dplyr** streamlined the workflow, making it easier to generate insights and communicate results.
  - Overall, the analysis met its objectives, offering clear findings about the relationships in the dataset.

---

### **Conclusion**
This project demonstrated how PCA and logistic regression could be used to analyze the relationships between sleep health and lifestyle factors. While synthetic data posed unique challenges, R's capabilities allowed us to overcome these and achieve meaningful results.


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

