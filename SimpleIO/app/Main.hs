module Main where

-- take user input , print also stor information in a file
-- append information to a file
import System.IO (appendFile)


main :: IO ()
main = do
    putStrLn"--- PROJECT STARTED ---"
    -- promt for the user's name
    putStrLn "What is your name?"
    name <- getLine -- read user's input

    -- promt for the user's age
    putStrLn "How old are you?"
    ageInput <- getLine
    let age =read ageInput :: Int -- convert the input to an integer

    -- calculate the year of birth
    putStrLn "What is your current year?"
    yearInput<-getLine
    let currentYear=read yearInput :: Int
    let yearOfBirth =currentYear - age 

    -- print a personalized message
    putStrLn $ "Hello, "++name++"!"
    putStrLn $ "You were born in " ++ show yearOfBirth ++ "."

    -- generate a personalized message
    let message ="Hello, "++name++"!\nYou were born in "++show yearOfBirth++".\n"
    let fileName="user_info.txt"
    appendFile fileName message
    putStrLn $ "--- YOUR Information HAS BEEN SAVED TO "++fileName++" ---"