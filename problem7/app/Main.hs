
module Main (main) where

    -- custom data types
data NestedList a =Elem a | List[NestedList a]


flatten :: NestedList a-> [a]
flatten (Elem x)=[x] -- if it's a single element , return it as List
flatten (List xs)=concatMap flatten xs -- recursively flatten each nested list


main :: IO ()
main = do
    print $ flatten (Elem 5)
    print $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]] )
    
