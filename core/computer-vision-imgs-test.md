Here are the solutions to your Sample Mid-Term Exam:
## First Image (Questions 16-23)

**16. Object pose refers to:**  
The position and orientation of an object in 3D space relative to the camera or world coordinate system.

**17. Disadvantage of eigenface algorithm:**  
**D) All of the mentioned**  
Eigenfaces require centered faces, same image sizes, and are sensitive to viewing angle/lighting variations.

**18. What does the sparse histogram represent in visual recognition?**  
**D) The frequency of occurrence of each visual word**  
This refers to the Bag of Visual Words (BoVW) representation where the histogram counts how many times each visual word (cluster center) appears in the image.

**19. Group the descriptors into clusters representing visual words:**  
This describes the **vector quantization** step in Bag of Visual Words, typically using **K-means clustering** to create a visual vocabulary/codebook.

**20. Mean-shift clustering can be used for:**  
**C) Object tracking**  
Mean-shift is famously used for tracking objects in video sequences (e.g., tracking colored objects by finding the mode of the color distribution).

**21. Which computer vision task can find out pose or placement of objects inside a scene?**  
**C) Object detection**  
Object detection localizes objects with bounding boxes and can estimate their pose/position in the scene.

**22. Process of giving each pixel in an image a label:**  
**C) Semantic segmentation**  
This is pixel-wise classification where each pixel is assigned a class label (e.g., road, car, pedestrian).

**23. Learning strategy modeling underlying probability distribution:**  
**B) Generative learning**  
Generative models (like Naive Bayes, GANs) learn P(X|Y) and P(Y) to model how data is generated. Discriminative models learn P(Y|X) directly.

---

## Second Image (Questions 1-15)

**1. Word for labeling complete images/video frames:**  
**A) Image classification**  
Assigning a semantic label to the entire image.

**2. Primary goal of computer vision picture preprocessing:**  
**C) To enhance the quality of images for analysis**  
Preprocessing improves contrast, reduces noise, normalizes lighting to make subsequent processing more effective.

**3. Seeing is the same as measuring properties in the image:**  
**B) False**  
"Seeing" implies understanding and interpretation, not just raw measurement of pixel values.

**4. Feature descriptor converts image to much larger feature vector:**  
**B) False**  
Feature descriptors typically reduce dimensionality or extract compact, meaningful representations (e.g., SIFT: 128 dimensions vs. millions of pixels).

**5. Weak corners discarded during which step of Harris corner detector?**  
**D) Compute cornerness function**  
After computing the cornerness response (R value), weak corners below a threshold are discarded.

**6. Important image property for Harris corner detector:**  
**C) Derivative**  
Harris detector relies on image gradients (derivatives) to find corners where intensity changes significantly in multiple directions.

**7. Construct a ______ using Gaussian filter:**  
**A) Scale-space**  
Creating a scale-space involves progressively blurring the image to detect features at different scales (Gaussian pyramid).

**8. In SIFT, orientation calculated as the ______ orientation:**  
**A) dominant**  
SIFT assigns the dominant gradient direction (peak in orientation histogram) to achieve rotation invariance.

**9. HOG histograms oriented towards dominant gradient. SIFT is not:**  
**B) False**  
Both HOG and SIFT use gradient orientations. SIFT keypoints are assigned the dominant orientation for rotation invariance.

**10. In which step of image stitching will RANSAC be used?**  
**B) Find good matches**  
RANSAC (Random Sample Consensus) removes outlier matches to estimate the homography matrix robustly.

**11. Strategy constructing decision boundary:**  
**A) Discriminative**  
Discriminative models (SVM, logistic regression) explicitly model the boundary between classes.

**12. Naive Bayes where c is class and x is input:**  
**D) posterior**  
P(c|x) is the posterior probability calculated using Bayes' theorem: P(c|x) = P(x|c)P(c)/P(x).

**13. For object detection, ______ provided by humans:**  
**C) ground truth**  
Ground truth annotations include bounding boxes and class labels used for training and evaluation.

**14. ______ anywhere algorithm did not produce box and annotator did not provide box:**  
**A) True Negatives**  
Background regions correctly identified as not containing objects (though sometimes "background" is also acceptable).

**15. Viewpoint variation addressed by:**  
**D) Both of the mentioned**  
Both using 3D models (synthesize viewpoints) and training on images from multiple angles/perspectives help handle viewpoint changes.

---

**Good luck on your exam!** Let me know if you need explanations for any specific questions.