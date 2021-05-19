plus :: Num a => a -> a -> a
plus x y = x + y
main :: IO()
main = print $ zipWith (*) [1, 4] [2, 6]
