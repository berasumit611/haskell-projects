-- Find out whether a list is a palindrome.
-- λ> isPalindrome [1,2,3]
-- False
-- λ> isPalindrome "madamimadam"
-- True
-- λ> isPalindrome [1,2,4,8,16,8,4,2,1]
-- True

module Main (main) where

isPalindrome::(Eq a)=>[a]->Bool
isPalindrome xs = xs == reverse xs

main :: IO ()
main = do
    print $ isPalindrome [1,2,3]
    print $ isPalindrome "madamimadam"
    print $ isPalindrome [1,2,3,4,5]
