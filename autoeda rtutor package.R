Sys.setenv(JAVA_HOME="C://Program Files//Java//jre-10")
system("java -version")
library(rJava)
library(RtutoR)



df = read.csv("C://Users//Desktop//Assignment//Complete//R//logistic regression//bank-full.csv",sep = ';') # Load the dataset
#Feature selection
df <- df[,-c(9,11,10,13,14,15,16)]

#df=Data Frame
# target_var - The name of the target (or dependent) variable
# output_file_name = Output file name and destination path (output file is a PowerPoint deck - if only file name is provided, the file is saved in the current working directory)
res = generate_exploratory_analysis_ppt(df,target_var = "y",
                                        output_file_name = "C://Users//Desktop//Assignment//Complete//R//logistic regression//final.pptx")
#For R shiny (web)
gen_exploratory_report_app(df)
