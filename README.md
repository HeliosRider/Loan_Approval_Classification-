# DRAFT Project Four Assignment

  
  
## Analysis of the results of the Classification report

1. Precision:
    # Low-risk loan (0.89): Out of all the instances predicted as low-risk loans, 89% were actually low-risk.
    # High-risk loan (0.72): Out of all the instances predicted as high-risk loans, 72% were actually high-risk.
    # Precision measures the accuracy of positive predictions. A high precision means that when the model predicts a class, it's correct most of the time.

2. Recall:
    # Low-risk loan (0.93): 93% of all actual low-risk loans were correctly predicted by the model.
    # High-risk loan (0.59): 59% of all actual high-risk loans were correctly predicted.
    # Recall measures the ability of the model to find all the relevant cases (true positives). A high recall means that the model doesn't miss many positive instances.

3. F1-score:
    # Low-risk loan (0.91): The harmonic mean of precision and recall for the low-risk class.
    # High-risk loan (0.65): The harmonic mean of precision and recall for the high-risk class.
    # The F1-score is the balance between precision and recall. It's useful when you need a balance between both metrics, especially when you have imbalanced classes. In this case, the F1-score is higher for the low-risk loans, indicating that the model is better at classifying low-risk loans.


After adjsuting the weights in recall

1. Precision:
    # Low-risk loan (0.91): Precision for low-risk loans is high, meaning that when the model predicts a loan to be low-risk, it is correct most of the time.
    # High-risk loan (0.58): Precision for high-risk loans has decreased. Only 58% of the high-risk loans predicted by the model are actually high-risk.
    # Precision represents how accurate the model's positive predictions are, and the increase in recall for the high-risk loan class comes at the cost of reduced precision.

2. Recall:
    # Low-risk loan (0.85): Recall for low-risk loans has decreased slightly, meaning the model is missing a bit more low-risk loans now compared to before.
    # High-risk loan (0.70): Recall for high-risk loans has improved significantly (from 0.59 to 0.70). This shows that the model is now correctly identifying more high-risk loans, which is the main goal of adjusting class weights.
    # Recall measures how well the model identifies actual positive cases. The improvement in recall for high-risk loans indicates that the class weights have helped the model focus more on identifying high-risk loans.

3. F1-score:
    # Low-risk loan (0.88): F1-score for low-risk loans is still relatively high.
    # High-risk loan (0.63): The F1-score for high-risk loans has increased slightly, reflecting the improvement in recall.
    # The F1-score is the harmonic mean of precision and recall, balancing both. For    high-risk loans, the trade-off between precision and recall results in an F1-score of 0.63, which indicates a moderate balance.

4. Accuracy:
    # Overall Accuracy (0.82): The overall accuracy has dropped from 0.86 to 0.82, which is expected because the model is now focusing more on identifying high-risk loans, which is a smaller class. While this might reduce accuracy, it's improving recall for the minority class (high-risk loans), which can be more important in certain scenarios (e.g., predicting loan defaults).


