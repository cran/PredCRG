\name{model2}
\alias{model2}
\docType{data}
\title{
Trained model with the Q2 dataset.
}
\description{
The \code{model2} is the trained model with the Q2 dataset using the developed approach.
}
\usage{data("model2")}

\details{
Here, 1596 sequences of pos_Q2 and neg_Q2 datasets were used for training. For prediction, support vector machine with Laplace kernel has been trained in which compositionsl, transitional and physico-chemical features are utilized.  
}


\seealso{
\link{PredCRG}, \link{PredCRG_Enc}, \link{PredCRG_training}
}


\examples{
library(kernlab)
data(test)
nam <- names(test)

#encoding of test set using compositional, transitional and physico-chemical features
enc <- PredCRG_Enc(test)

#predicting test set using model2 as CRG or non-CRG
pred <- predict(model2, newdata=enc[1:10,], type="response") 

#predicting probabilities of the test sequences using model2
pred1 <- predict(model2, newdata=enc[1:10,], type="probabilities") 

#combining predicted labels and probabilities
result <- data.frame(seq_name=nam[1:10], predicted_label=as.character(pred)
,predicted_probability=pred1[,"CRG"])

print(result)
}