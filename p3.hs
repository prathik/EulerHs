{-# OPTIONS_GHC -O2 #-}
import Data.Array.Unboxed

primesToNA n = 2: [i | i <- [3,5..n], ar ! i]
  where
    ar = f 5 $ accumArray (\ a b -> False) True (3,n) 
                        [(i,()) | i <- [9,15..n]]
    f p a | q > n = a
          | True  = if null x then a2 else f (head x) a2
      where q = p*p
            a2  :: UArray Int Bool
            a2 = a // [(i,False) | i <- [q, q+2*p..n]]
            x  = [i | i <- [p+2,p+4..n], a2 ! i]

main :: IO ()
main = print $ [x | x <- primesToNA 1000000, 600851475143 `mod` x == 0]
