##data cleasing
#input data
library(readr)
assigned_to <- read_csv("~/Desktop/big data /Eclipse/assigned_to.csv")
bug_status <- read_csv("~/Desktop/big data /Eclipse/bug_status.csv")
cc <- read_csv("~/Desktop/big data /Eclipse/cc.csv")
component <- read_csv("~/Desktop/big data /Eclipse/component.csv")
op_sys <- read_csv("~/Desktop/big data /Eclipse/op_sys.csv")
priority <- read_csv("~/Desktop/big data /Eclipse/priority.csv")
product <- read_csv("~/Desktop/big data /Eclipse/product.csv")
reports <- read_csv("~/Desktop/big data /Eclipse/reports.csv")
resolution <- read_csv("~/Desktop/big data /Eclipse/resolution.csv")
severity <- read_csv("~/Desktop/big data /Eclipse/severity.csv")
short_desc <- read_csv("~/Desktop/big data /Eclipse/short_desc.csv")
version <- read_csv("~/Desktop/big data /Eclipse/version.csv")

#rename variables
names(priority)[1]<-"bug_id"
names(severity)[1]<-"bug_id"
names(product)[1]<-"bug_id"
names(component)[1]<-"bug_id"
names(bug_status)[1]<-"bug_id"
names(resolution)[1]<-"bug_id"
names(assigned_to)[1]<-"bug_id"
names(cc)[1]<-"bug_id"
names(short_desc)[1]<-"bug_id"
names(version)[1]<-"bug_id"
names(op_sys)[1]<-"bug_id"

names(priority)[2]<-"priority"
names(severity)[2]<-"severity"
names(product)[2]<-"product"
names(component)[2]<-"component"
names(bug_status)[2]<-"bug_status"
names(resolution)[2]<-"resolution"
names(assigned_to)[2]<-"assigned_to"
names(cc)[2]<-"cc"
names(short_desc)[2]<-"short_desc"
names(version)[2]<-"version"
names(op_sys)[2]<-"op_sys"

names(priority)[3]<-"update_time"
names(severity)[3]<-"update_time"
names(product)[3]<-"update_time"
names(component)[3]<-"update_time"
names(bug_status)[3]<-"update_time"
names(resolution)[3]<-"update_time"
names(assigned_to)[3]<-"update_time"
names(cc)[3]<-"update_time"
names(short_desc)[3]<-"update_time"
names(version)[3]<-"update_time"
names(op_sys)[3]<-"update_time"

names(priority)[4]<-"reporter_id"
names(severity)[4]<-"reporter_id"
names(product)[4]<-"reporter_id"
names(component)[4]<-"reporter_id"
names(bug_status)[4]<-"reporter_id"
names(resolution)[4]<-"reporter_id"
names(assigned_to)[4]<-"reporter_id"
names(cc)[4]<-"reporter_id"
names(short_desc)[4]<-"reporter_id"
names(version)[4]<-"reporter_id"
names(op_sys)[4]<-"reporter_id"

names(reports)[1]<-"bug_id"
names(reports)[2]<-"resolution"
names(reports)[3]<-"bug_status"
names(reports)[4]<-"opening_time"
names(reports)[5]<-"reporter_id"

#delete missing values
any(is.na(assigned_to))
any(is.na(bug_status))
any(is.na(cc))
any(is.na(component))
any(is.na(op_sys))
any(is.na(priority))
any(is.na(product))
any(is.na(reports))
any(is.na(resolution))
any(is.na(severity))
any(is.na(short_desc))
any(is.na(version))

assigned_to<-na.omit(assigned_to)
cc<-na.omit(cc)
op_sys<-na.omit(op_sys)
reports<-na.omit(reports)
resolution<-na.omit(resolution)
short_desc<-na.omit(short_desc)

any(is.na(assigned_to))
any(is.na(bug_status))
any(is.na(cc))
any(is.na(component))
any(is.na(op_sys))
any(is.na(priority))
any(is.na(product))
any(is.na(reports))
any(is.na(resolution))
any(is.na(severity))
any(is.na(short_desc))
any(is.na(version))

#output
write.csv(assigned_to,file = "~/Desktop/big data /Eclipse/new_assigned_to.csv")
write.csv(bug_status,file = "~/Desktop/big data /Eclipse/new_bug_status.csv")
write.csv(cc,file = "~/Desktop/big data /Eclipse/new_cc.csv")
write.csv(component,file = "~/Desktop/big data /Eclipse/new_component.csv")
write.csv(op_sys,file = "~/Desktop/big data /Eclipse/new_op_sys.csv")
write.csv(priority,file = "~/Desktop/big data /Eclipse/new_priority.csv")
write.csv(product,file = "~/Desktop/big data /Eclipse/new_product.csv")
write.csv(reports,file = "~/Desktop/big data /Eclipse/new_reports.csv")
write.csv(resolution,file = "~/Desktop/big data /Eclipse/new_resolution.csv")
write.csv(severity,file = "~/Desktop/big data /Eclipse/new_severity.csv")
write.csv(short_desc,file = "~/Desktop/big data /Eclipse/new_sort_desc.csv")
write.csv(version,file = "~/Desktop/big data /Eclipse/new_version.csv")

