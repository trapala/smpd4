#install.packages("ahp")
library(ahp)
ahpFile <- system.file("extdata", "led.ahp", package="ahp")
ledAhp <- Load(ahpFile)
Calculate(ledAhp)
print(ledAhp, priority = function(x) x$sparent$priority["total", x$name])
Visualize(ledAhp)
Analyze(ledAhp)
AnalyzeTable(ledAhp)
AnalyzeTable(ledAhp, decisionMaker = "Ojciec")
AnalyzeTable(ledAhp, decisionMaker = "Matka")
AnalyzeTable(ledAhp, decisionMaker = "Dziecko")
