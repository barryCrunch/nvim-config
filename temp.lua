vim.ui.input({prompt = "Provide a input: "}, function(text) print(text) end)

vim.ui.select({"item 1", "item 2", "item 3"},{prompt = "select an item: "}, function(text) print(text) end)
