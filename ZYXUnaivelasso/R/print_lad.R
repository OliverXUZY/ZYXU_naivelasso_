#' Print \deqn{coefficient of LASSO regression}
#'
#' Calculate \deqn{LASSO regression} 
#' @param obj the object you get from lasso function
#' @param ... further arguments passed to or from other methods 
#' @export


print.las = function(obj,...) {
  cat(sep="","beta0: ", obj$coefficients[1],"\n", "beta1: ", obj$coefficients[2], "\n") 
}

















