app <- AppDriver$new("../../")
app$snapshotInit("mytest")

app$set_inputs(var = "disp")
app$set_inputs(bins = 1)
app$expect_snapshot()
app$expect_snapshot()
app$expect_snapshot()
app$expect_snapshot()
app$set_inputs(var = "wt")
app$set_inputs(bins = 19)
app$expect_snapshot()
