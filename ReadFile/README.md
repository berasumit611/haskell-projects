# ReadFile
For Line-by-Line Processing:

Use lines to split the file contents into a list of lines:
```
let fileLines = lines fileContents
mapM_ putStrLn fileLines  -- Prints each line separately
```
Alternate Run Option
```
stack runghc src/Main.hs
```