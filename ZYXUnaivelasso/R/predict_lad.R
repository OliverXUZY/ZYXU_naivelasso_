#' Predict new response from lasso model \deqn{y_new_hat}
#'
#' Predict \deqn{y_new_hat LASSO model} 
#' @param obj the object you get from lasso function
#' @param ... further arguments passed to or from other methods 
#' @export
predict.las = function(obj,x_new,...) {
  coe = obj$coefficients
  y_new = coe[1] + coe[2]*x_new
  return(as.vector(y_new))
}

