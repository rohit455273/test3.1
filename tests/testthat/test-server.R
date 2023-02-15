testServer(expr = {
  # Set the `size` slider and check the output
  #app$snapshot()
  session$setInputs(var = "drat")
    
  expect_equal(input$var,"drat")
  session$setInputs(bins = 1)
  
  
  expect_equal(input$bins,1)
  session$setInputs(bins = 13)
  
})
