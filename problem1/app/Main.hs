module Main (main) where
-- find the last element of the list
-- Example in Haskell:

-- λ> myLast [1,2,3,4]
-- 4
-- λ> myLast ['x','y','z']
-- 'z'


myLast::[a]->a
myLast []=error "Empty list has no last element"
myLast [x]=x
myLast (_:xs)=myLast xs

main :: IO ()
main = do
    putStrLn "LAST ELEMENT -------------------------------->"
    print (myLast [1,2,3,4])
    print $ myLast['A','B','C']

    print $ myLast[1]
