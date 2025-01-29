module Main where
-- reading file from a text file
import System.IO (readFile)

main :: IO ()
main = do
    putStrLn "READING FILE ...."
    -- specify the file name
    let fileName="user_info.txt"

    -- read the contents of the file
    fileContents <- readFile fileName

    -- print the file contents to console
    putStrLn $ "The contents of the "++  fileName ++" file are:"
    putStrLn fileContents

    