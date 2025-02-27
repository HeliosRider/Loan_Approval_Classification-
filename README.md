**Modeling results of the Loan CSV Data file**

**Logistic Regression Model with the Classification Report**

Key Metrics:

1. Precision: 
This is the ratio of correctly predicted positive observations to the total predicted positives. For each class, it tells us how many of the predicted instances were actually positive.

    - Low-risk loan: Precision = 0.85
    - High-risk loan: Precision = 0.76

2. Recall (Sensitivity or True Positive Rate): 
This is the ratio of correctly predicted positive observations to all the actual positives. It tells us how many actual positives were correctly predicted.

    - Low-risk loan: Recall = 0.96
    - High-risk loan: Recall = 0.42

3. F1-Score: 
This is the weighted average of Precision and Recall. It gives a better measure of the incorrectly classified cases than the Accuracy metric. It's useful when the class distribution is imbalanced.

    - Low-risk loan: F1-Score = 0.90
    - High-risk loan: F1-Score = 0.54

4. Accuracy: This is the overall percentage of correctly classified instances across all classes.

    - Accuracy = 0.84 (84%)

Observation:

1. Low-risk loan (majority class): 
The model performs well with high recall (0.96) and decent precision (0.85), meaning it's good at predicting low-risk loans, but not perfect.

2. High-risk loan (minority class): 
The model struggles with predicting high-risk loans, with a lower recall (0.42), meaning it's failing to identify many high-risk loans. However, it does a reasonable job at precision (0.76), meaning that when it does predict high-risk, it's often correct.

3. Imbalanced Dataset Impact:
Since there are more low-risk loans (8749) compared to high-risk loans (2500), this is an imbalanced classification problem. The model tends to favor the majority class, leading to a higher recall for low-risk loans but poorer performance for high-risk loans.

**Trained Deep Neural Network Model**

Obervation:

- Loss: 
A value such as 0.1759 means that the predictions made by the model are fairly close to the true values, but there is still room for improvement.

- Accuracy: 
A value like 0.9233 (or 92.33%) indicates that 92.33% of the model's predictions are correct on the test data, which is quite high and indicates good generalization.

