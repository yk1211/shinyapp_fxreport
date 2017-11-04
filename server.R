library(quantmod)
GSPC <- getSymbols("^GSPC", src="yahoo", from="2017-10-1", to="2017-11-03", periodicity="daily", auto.assign=FALSE)
spy_df <- as.data.frame(GSPC)
colnames(spy_df) <-c("open", "high", "low", "close", "volume", "adjusted")
  
#当日の日付をとるコード


shinyServer(function(input, output){
  output$table1 <- renderTable({spy_df[10,c("open", "close", "volume", "high")]}, caption="HFT model",
                              caption.placement = getOption("xtable.caption.placement", "top"),
                              caption.width = getOption("xtable.caption.width", NULL),
                              striped=TRUE, bordered=TRUE, width="auto")
  
  output$table2 <- renderTable({spy_df[10,c("open", "close", "volume", "high")]}, caption="Stats model",
                               caption.placement = getOption("xtable.caption.placement", "top"),
                               caption.width = getOption("xtable.caption.width", NULL),
                               striped=TRUE, bordered=TRUE, width="auto")
})