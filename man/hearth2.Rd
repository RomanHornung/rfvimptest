% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hearth2.R
\name{hearth2}
\alias{hearth2}
\title{Data on Coronary Artery Disease}
\format{
A data frame with 294 observations, ten covariates and one two-class outcome variable
}
\source{
OpenML: data.name: heart-h, data.id: 1565, link: \url{https://www.openml.org/d/1565/}
}
\description{
This data includes 294 patients undergoing angiography at the Hungarian Institute of Cardiology in Budapest between 1983 and 1987.
}
\details{
The variables are as follows:
\itemize{
  \item \code{age}. numeric. Age in years
  \item \code{sex}. factor. Sex (1 = male; 0 = female)
  \item \code{chest_pain}. factor. Chest pain type (1 = typical angina; 2 = atypical angina; 3 = non-anginal pain; 4 = asymptomatic)
  \item \code{trestbps}. numeric. Resting blood pressure (in mm Hg on admission to the hospital)
  \item \code{chol}. numeric. Serum cholestoral in mg/dl
  \item \code{fbs}. factor. Fasting blood sugar > 120 mg/dl (1 = true; 0 = false)
  \item \code{restecg}. factor. Resting electrocardiographic results (1 = having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV); 0 = normal)
  \item \code{thalach}. numeric. Maximum heart rate achieved
  \item \code{exang}. factor. Exercise induced angina (1 = yes; 0 = no)
  \item \code{oldpeak}. numeric. ST depression induced by exercise relative to rest
  \item \code{Class}. factor. Disease satus (1 = no disease; 2 = coronary artery disease)
}
\verb{ }\cr
The original openML dataset was pre-processed in the following way: \cr

1. The variables were re-named according to the description given on openML.

2. The missing values which were coded as "-9" were replaced by NA values.

3. The variables \code{slope}, \code{ca}, and \code{thal} were excluded, because these featured
too many missing values.

4. The categorical covariates were transformed into factors.

5. There were 6 \code{restecg} values of "2" which were replaced by "1".

6. The missing values were imputed: The missing values of the numerical covariates were replaced by the means
   of the corresponding non-missing values. The missing values of the categorical covariates were replaced by
   the modes of the corresponding non-missing values.

Note that this dataset is also included in a slightly different form in the R package \code{ordinalForest} (version 2.4-2)
under the name \code{hearth}. The only difference is that in \code{hearth2}, the ordinal outcome variable
\code{Class} was transformed into a two-class outcome by only differentiating between diseased vs. healthy,
rather than differentiating between different levels of disease severity.
}
\examples{
data(hearth2)

table(hearth2$Class)
dim(hearth2)

head(hearth2)

}
\references{
\itemize{
  \item Detrano, R., Janosi, A., Steinbrunn, W., Pfisterer, M., Schmid, J.-J., Sandhu, S., Guppy, K. H., Lee, S., Froelicher, V. (1989) International application of a new probability algorithm for the diagnosis of coronary artery disease. The American Journal Of Cardiology, 64, 304--310.
  \item Vanschoren, J., van Rijn, J. N., Bischl, B., Torgo, L. (2013) OpenML: networked science in machine learning. SIGKDD Explorations, 15(2), 49--60.
  }
}
