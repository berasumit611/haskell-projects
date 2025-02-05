module Main (main) where

-- Find the last element of a list.
-- λ> myLast [1,2,3,4]
-- 4
-- λ> myLast ['x','y','z']
-- 'z'

myButLast::[a]->a
myButLast []=error "List is too short"
myButLast [_]=error "List is too short"
myButLast[x,_]=x
myButLast(_:xs)=myButLast xs

main :: IO ()
main = do
    putStrLn "2nd LAST ELEMENT -------------------------------->"
    print $ myButLast[1,2,3,4]
    print $ myButLast['A'..'Z']
    print $ myButLast['A'] -- problem2-exe: List is too short
    -- print $ myButLast[] 

