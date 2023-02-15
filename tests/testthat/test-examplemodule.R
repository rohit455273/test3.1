# See ?testServer for more information
testServer(exampleModuleServer, {
  # Set initial value of a button#app$snapshot()
  session$setInputs(var = "drat")
  
  expect_equal(input$var,"drat")
  session$setInputs(bins = 1)
  
  
  expect_equal(input$bins,1)
  session$setInputs(bins = 13)
  
})
