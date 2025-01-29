module Main (main) where

-- haskell data types

-- basic types
basicTypes::IO()
basicTypes=do
    let aInt=42::Int
        aFloat=3.14::Float
        aDouble=2.3984794::Double
        aBool=True::Bool
        aChar='H'::Char
        aString="hello world!"::String
    putStrLn "Basic Haskel Data Types --->"
    print(aInt, aFloat, aDouble, aBool, aChar, aString)

-- composite types
compositeTypes::IO()
compositeTypes=do
    let aList=[1,2,3,4,5]::[Int]
        aTouple=("Haskell",2025)::(String,Int)
        aMaybevalue = Just 10::Maybe Int
        aNothingValue = Nothing::Maybe Int
    putStrLn"\nComposite Types --->"
    print(aList, aTouple, aMaybevalue, aNothingValue)

-- custom data types
data Shape = Circle Double | Rectangle Double Double deriving Show
data Person = Person {name :: String,age::Int} deriving Show
data Height=Height Double deriving Show -- type alias

demoCustomTypes::IO()
demoCustomTypes=do
    let myShape=Circle 5.0
        myperson=Person "Sumit" 30
        myHeight=Height 1.75
    putStrLn "\nCustom Types --->"
    print(myShape, myperson, myHeight)    

-- higher order functions
applyTwice::(a->a)->a->a
applyTwice f x = f (f x)

demoHigherOrderFunctions::IO()
demoHigherOrderFunctions=do
    let double x = x*2
        result = applyTwice double 3
    putStrLn "\nHigher Order Functions --->"
    print result

main :: IO ()
main = do
    putStrLn "----- MAIN METHOD START -----"
    basicTypes
    compositeTypes
    demoCustomTypes
    demoHigherOrderFunctions
    putStrLn "----- MAIN METHOD END -----"



-- otuput
-- ----- MAIN METHOD START -----
-- Basic Haskel Data Types --->
-- (42,3.14,2.3984794,True,'H',"hello world!")

-- Composite Types --->
-- ([1,2,3,4,5],("Haskell",2025),Just 10,Nothing)

-- Custom Types --->
-- (Circle 5.0,Person {name = "Sumit", age = 30},Height 1.75)

-- Higher Order Functions --->
-- 12
-- ----- MAIN METHOD END -----