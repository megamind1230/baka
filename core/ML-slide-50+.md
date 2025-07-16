- [x] features === cols
	- dependent feature {predicted output} > 1 col
		- indep {input}> many cols
- [x] anomalies الحالات الشاذة
- [x] types of AI
	- capability based
		- [x] weak
		- [x] general / strong
		- [x] super
	-  functionality based
		- [x] reactive machines
		- [x] limited mem
		- [x] theory of mind
		- [x] self-aware
- [x] underfitting
	- [x] high-bias
	- [x] oversimplifying
	- [x] how to detect/when it happens
		- noise/outliers
		- high bias
		- too `simple` model
	- [x] how to avoid
		- incr 
			- num of features
			- complexity
			- size
- [x] overfitting
	- [x] high-variance
	- [x] how to detect/when it happens
		- noise/garbage so fails to generalize
		- size is small/not enough (traning data)
		- too `complex` model 
		- high variance
	- [x] how to avoid
		- k-folds cross validation
		- regularization {lasso / ridge}
		- enough/sufficient data
		- ensembling
	- [x] accuracy vs loss

## 10 techs to avoid over/underfitting
- [x] more training data
- [x] data aug
	- cheap, safe
	- slightly diff data
- [x] add noise
	- to input
		- model more stable
	- to output
		- data more diverse
	```c
	addition of noise to the input data ? what is noise?
	irrelevant or random variations in data that dont represent the true underlying pattern or relationship being modeled. 
	There are two main types:
	
	1. Feature noise: Random errors or variations in input features
	- Sensor measurement errors
	- Human data entry mistakes
	- Random fluctuations in readings
	
	2. Label noise: Errors in the target/output values
	- Incorrect classifications in training data
	- Inaccurate ground truth labels
	------------
	Adding noise deliberately during training (noise injection) can help:
	- Prevent overfitting
	- generalization
	- models more robust
	
	Common noise injection techniques include:
	- Gaussian
	- Dropout layers
	- Data augmentation with random transformations
	
	The key is finding the right balance - too much noise hurts learning, too little reduces generalization ability.
	```
- [x] feature selection
	- layers/neorons
	- remove redundant
	```c
	supervised feature selection
	**filters CIMF = chi , info , missing , fisher
	**embed = Regu Random
	**wrappers=forward,backward | exhaustive, recursive
	```
- [x] k-folds cross-validation
	- help `tune hyperparas` with unseen data
- [x] simplify data
	- prune a decision tree يقصقص
	- dropout
		- randomly selecting a fraction of neurons to be set to zero during each training session
	- reduce paras
		- PDP not pewdiepie but {prune, dropout, paras }
- [x] regu
	- if overfit when complex, then reduce features
	- Lasso/ Ridge
	- apply penalty to input paras with large coeff> so limits variance
- [x] ensembling {a group of supporters}
	- combine base models into an optimal one
	- aggregated predictions
	- methods
		- `bagging`
		- `boosting`
- [x] early stopping
	- stop before memorizing many noise/fluc
	- optimum times/iterations
- [x] add dropout layers
	- drop out neorons/`nodes` ..so the system becomes more simple
	- `randomly` dropout
- confusion/error matrix
	- measures performance of classi models
	- FN = type2 error
	- help find the next Eval metrics
# ML eval paras / metrics
## easy
### acc
$$\frac{\Sigma \ allTrue's}{\Sigma \  all}$$

### error 
mis-classfication rate
$$\frac{\Sigma \ allFalse's}{\Sigma \  all}$$
### PPV{positive predictive value}
`precision = PPV .. never forget`
$$\frac{TruePositive}{\Sigma \  whateverPostive}$$
### NPV{negative predictive value}

$$\frac{TrueNegative}{\Sigma \  whateverNegative}$$
## med
> rates >> `RSp FM` discovery >> {`R`ecall tp, `Sp`ecificity tn `|` `F`allout fp, `M`iss fn} ... then false discovery
### TPR{true positive rate}
`recall` / sensitivity
$$\frac{TruePositive}{same+comp}$$
`comp = complimentary`
{any `rate` has (same+comp)}
### TNR{true negative rate}
`specificity` 
$$\frac{TrueNegative}{same+comp}$$
### FPR{false positive rate}
`fallout`
$$\frac{FalsePositive}{same+comp}$$
### FNR{false negative rate}
`miss`
$$\frac{FalseNegative}{same+comp}$$

### FDR{false `discovery` rate}
$$\frac{FalsePositive}{same+TP\_bot}\ ...jg\ diff $$
### F1 score
f-measure => related to {recall & precision}
$$\frac{2*mul}{sum}$$
> max f1 .. if recall = precision
 `precision = PPV .. never forget`