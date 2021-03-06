library(RPostgreSQL)

data(list = data(package = "rrricanesdata")$results[,3],
     package = "rrricanesdata")

host <- Sys.getenv("focused_nightingale.ip")
user <- Sys.getenv("focused_nightingale.user")
password <- Sys.getenv("focused_nightingale.password")

con <- dbConnect(dbDriver("PostgreSQL"), dbname = "rrricanesdata", host = host,
                 port = 5432, user = user, password = password)

dbWriteTable(con, "adv", as.data.frame(adv), overwrite = TRUE)
dbWriteTable(con, "discus", as.data.frame(discus), overwrite = TRUE)
dbWriteTable(con, "fcst", as.data.frame(fcst), overwrite = TRUE)
dbWriteTable(con, "fcst_wr", as.data.frame(fcst_wr), overwrite = TRUE)
dbWriteTable(con, "fstadv", as.data.frame(fstadv), overwrite = TRUE)
dbWriteTable(con, "posest", as.data.frame(posest), overwrite = TRUE)
dbWriteTable(con, "prblty", as.data.frame(prblty), overwrite = TRUE)
dbWriteTable(con, "public", as.data.frame(public), overwrite = TRUE)
dbWriteTable(con, "storms", as.data.frame(storms), overwrite = TRUE)
dbWriteTable(con, "update", as.data.frame(update), overwrite = TRUE)
dbWriteTable(con, "wndprb", as.data.frame(wndprb), overwrite = TRUE)
dbWriteTable(con, "wr", as.data.frame(wr), overwrite = TRUE)

dbDisconnect(con)
