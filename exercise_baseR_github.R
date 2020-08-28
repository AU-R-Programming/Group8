# 1) Generate one observation from a Poisson distribution with lambda = 5 and assign it to an object called `test`
test<-rpois(1,5)
# 2) Take the square root of `test` and multiply it by the logarithm of 10
sqrt(test)*log(10)
# 3) Install the simts package from CRAN
install.packages('simts')
# 4) Generate Figure 1 in the vignette https://cran.r-project.org/web/packages/simts/vignettes/vignettes.html
# using the code available in the vignette
library('simts')
set.seed(1337)
n = 10^4
wn = gen_gts(n, WN(sigma2 = 1))
qn = gen_gts(n, QN(q2 = .5)) 
rw = gen_gts(n, RW(gamma2 = .75)) 
par(mfrow = c(3,1))
plot(wn)
plot(qn)
plot(rw)
# 5) Install the irg package from the GitHub repository at https://github.com/SMAC-Group/irg
install.packages('devtools')
# 6) Find help in R for the function `granger_test` (in the irg package) and run the example at the end of the help documentation

# 7) Load the data class_survey.csv (available on Canvas>Files)

# 8) Using the functions `barplot` and `table`, create barplots of the three variables in the loaded data. Comment.