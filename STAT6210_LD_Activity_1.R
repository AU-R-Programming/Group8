# 1) Generate one observation from a Poisson distribution with lambda = 5 and assign it to an object called `test`
test<-rpois(1,5)

# 2) Take the square root of `test` and multiply it by the logarithm of 10
sqrt(test)*log(10)

# 3) Install the simts package from CRAN
install.packages("simts")

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
devtools::install_github("SMAC-Group/irg", build_vignettes = TRUE)

# 6) Find help in R for the function `granger_test` (in the irg package) and run the example at the end of the help documentation
help.search("granger_test")

## Not run: 
library(irg)
data(signals)
times <- c(0, 5, 10, 15, 20, 30, 45, 60, 90, 120)
irg::granger_test(root = signals$root, shoot = signals$shoot, times = times, alternative = "twodir")

## End(Not run)

# 7) Load the data class_survey.csv (available on Canvas>Files)
help("read.csv")
class_data <- read.csv("file:///Users/lukedolan/Downloads/ldap-9.html", sep = ",", header=TRUE)
#Student imported class_survey file by utilizing Import Dataset function

#trial and error code listed below
#ncol <- max(count.fields("file:///Users/lukedolan/Downloads/ldap-9.html", sep = ","))
#read.csv("file:///Users/lukedolan/Downloads/ldap-9.html", fill=TRUE, header=TRUE)
#unlink("file:///Users/lukedolan/Downloads/ldap-9.html")

# 8) Using the functions `barplot` and `table`, create barplots of the three variables in the loaded data. Comment.
library(base)
table(data=class_survey)
barplot(table(class_survey$Programming.Experience))
barplot(table(class_survey$R.Experience))
barplot(table(class_survey$GitHub.Experience))
            
#More trial and error code listed below
#help("table")

#data(class_survey)
#tables(class_survey)

#barplot(table(class_survey$Programming.Experience))

#help("barplot")
#table(class_data)

#table(class_data)
#as.table(class_data)

#class_data2 <- csv.get("file:///Users/lukedolan/Downloads/ldap-9.html", sep = ",", header=TRUE, labels='1')

#counts <- table(class_data)
#barplot(counts)

#help("table")
#names(class_data)
#barplot(height = vector, class_data)

#counts <- table



