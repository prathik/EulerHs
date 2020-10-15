import Data.List (union)

problem_1 = sum (union [3,6..999] [5,10..999])

main :: IO()
main = putStrLn $ show problem_1
