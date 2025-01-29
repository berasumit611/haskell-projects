module Main (main) where
import Data.Char (toUpper, toLower, isDigit, isAlpha)
import Data.List (isInfixOf, intercalate, sort, nub)
-- a haskell code to demonstrate some string operations

stringOperations::IO()
stringOperations=do
    let str1="hello, world!"
        str2=" functional programming "
        strList = ["haskell", "is", "awesome!"]
        numStr="1234abc"

    putStrLn "Original Strings --->"
    putStrLn $ "str1: "++str1
    putStrLn $ "str2: "++str2

    putStrLn "\nBasic String Operations --->"
    putStrLn $ "concatenation:"++(str1++str2)
    putStrLn $ "uppercase:"++map toUpper str1
    putStrLn $ "lowercase:"++map toLower str1
    putStrLn $ "trimmed:"++(unwords . words $ str2)

    putStrLn "\nAdvanced String Operations --->"
    putStrLn $ "Substring check (Haskell in str1?):" ++show("Haskell" `isInfixOf` str1)
    putStrLn $ "Sorted charecters: "++sort str1
    putStrLn $ "Unique charecters: "++nub str1
    putStrLn $ "Intercalated List: "++ intercalate "-" strList
    putStrLn $ "Filtered digits from '12345abc': "++filter isDigit numStr
    putStrLn $ "Filtered digits from '12345abc': "++filter isAlpha numStr

main :: IO ()
main=do
    putStrLn "\n--- STRING OPERATIONS DEMONSTRATION ---"
    stringOperations





