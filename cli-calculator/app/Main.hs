module Main where
    -- import function to flush the output buffer and hadle user input/output
import System.IO(hFlush,stdout)

readNumber :: IO Double
readNumber = do
    input <- getLine
    case reads input :: [(Double, String)] of
        [(num, "")] -> return num
        _           -> do
            putStrLn "Invalid input. Please enter a valid number:"
            readNumber

-- function to perform the selected operation
calculate :: Double -> Double -> Char -> Maybe Double
calculate a b op =
    case op of
        '+' -> Just (a+b)   
        '-' -> Just (a-b)
        '*' -> Just (a*b)
        '/' -> if b/=0 then Just (a/b) else Nothing
        _   -> Nothing

-- main program starting point
main :: IO()
main =do
    putStrLn "----- WELCOME TO HASKELL CALCULATOR -----"
    putStrLn "ENTER THE FIRST NUMBER:"
    num1<-readNumber
    
    putStrLn "ENTER THE SECOND NUMBER:"
    num2<-readNumber

    putStrLn "CHOOSE AN OPERATION (+, -, *, /):"
    operation<-getChar
    _<-getLine -- clear the buffer

    case calculate num1 num2 operation of
        Just result -> putStrLn $ "The result is: "++show result
        Nothing     -> putStrLn "Error: Invalid operation or division by zero."



-- readNumber()
-- A function to read a valid `Double` (floating-point number) from the user
-- Read input from the user as a string
-- Attempt to parse the input string as a `Double` using `reads`
-- `reads` returns a list of tuples [(parsedValue, remainingString)] if successful
-- If parsing is successful and there's no remaining unparsed string
-- If parsing fails or input is invalid
-- Inform the user of invalid input
-- Recursively call `readNumber` to prompt the user again