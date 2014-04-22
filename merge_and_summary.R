# COMPANIES
companies1to1 <- read.csv("Companies_1to1.csv", header=TRUE)
companiesRels <- read.csv("Companies_Relationships.csv", header=TRUE)
companiesOffs <- read.csv("Companies_Offices.csv", header=TRUE)
companiesFunds <- read.csv("Companies_Funding.csv", header=TRUE)
companiesInvs <- read.csv("Companies_Investments.csv", header=TRUE)
companiesAcqs <- read.csv("Companies_Acquisitions.csv", header=TRUE)
companiesComps <- read.csv("Companies_Competitors.csv", header=TRUE)


# PEOPLE
people1to1 <- read.csv("People_1to1.csv", header=TRUE)
peopleRels <- read.csv("People_Relationships.csv", header=TRUE)
peopleInvs<- read.csv("People_Investments.csv", header=TRUE)
peopleDegs <- read.csv("People_Degrees.csv", header=TRUE)

peopleinfo = data.frame(people1to1$permalink)
peopleinfo$age = 114-as.numeric(people1to1$born_year) #for 2014
peopleinfo = merge(peopleinfo, peopleDegs, by="permalink", all = TRUE)
names(peopleinfo) = c("permalink", "age", "school", "isfounder")



# FINANCIAL ORGS
fiorgs1to1 <- read.csv("Fiorgs_1to1.csv", header=TRUE)
fiorgsInvs <- read.csv("Fiorgs_Investments.csv", header=TRUE)
fiorgsOffs <- read.csv("Fiorgs_Offices.csv", header=TRUE)
fiorgsRels <- read.csv("Fiorgs_Relationships.csv", header=TRUE)






















