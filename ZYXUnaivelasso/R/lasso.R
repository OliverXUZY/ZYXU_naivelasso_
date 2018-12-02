#' Calculate \deqn{LASSO regression}
#'
#' Calculate \deqn{LASSO regression} 
#' @param x    the data vector, explanatory variable
#' @param y    the data vector, response variable
#' @return     \deqn{beta0,beta1} 
#' @details    \code{lad} calculates
#'             \deqn{the parameter of LASSO regression}. 
#' @export
#' @examples
#' obj = lasso(area$land,area$farm)
#' print(obj)
#' plot(area$land,area$farm)
#' abline(reg = lm(farm~land,data = area),col = "red")
#' abline(reg = obj,col = "navy")
#' legend("bottomright",legend = c("lm()","lasso()"),col = c("red","navy"))
#' x_new = quantile(area$land,probs = seq(0,1,1/4))
#' y_new = predict(obj = obj,x_new = x_new)
#' points(x = x_new,y = y_new, col = "green",pch = 19)


lasso = function(x,y)
{
  lambda = 2                ### set lambda is 2
  LAS = function(par)
  {
    beta0 = par[1]
    beta1 = par[2]
    resu = sum((y-beta0-beta1*x)^2) + lambda*(abs(beta1) + abs(beta0))
    return(resu)
  }
  model_lm = lm(y~x)   ###  set initial value
  ini = model_lm$coefficients
  opt = optim(par = ini,fn = LAS, method = "Nelder-Mead")

  coe = opt$par
  fitt = opt$value
  resi = y - fitt
  result = list(coefficients = coe,fitted.values = fitt,residuals = resi)
  class(result) = "las"
  return(result)
}
