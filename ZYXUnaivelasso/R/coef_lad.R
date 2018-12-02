#' Extract \deqn{coefficient of LASSO regression}
#'
#' Calculate \deqn{LASSO regression} 
#' @param obj the object you get from lasso function
#' @param ... further arguments passed to or from other methods 
#' @export

coef.las = function(obj,...) {
  return(obj$coefficients)
}

