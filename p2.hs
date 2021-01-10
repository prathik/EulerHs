
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
problem_2 :: Integer
problem_2 = sum [x | x <- takeWhile (<= 4000000) fibs, even x]

main :: IO()
main = putStrLn $ show problem_2
