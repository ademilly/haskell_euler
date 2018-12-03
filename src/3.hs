-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

import Data.List

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromInteger

isPrime :: Integer -> Bool
isPrime n = foldl (&&) True (map (\x -> n `mod` x /= 0) [2..isqrt n])

dividorsOf :: Integer -> [Integer]
dividorsOf n = (foldr (++) [] [getFactors n c | c <- [2..isqrt n]])

getFactors :: Integer -> Integer -> [Integer]
getFactors n c
  | n `mod` c == 0 = [c, n `quot` c]
  | otherwise      = []
main = print (maximum (filter isPrime (sort (dividorsOf 600851475143)))) 
