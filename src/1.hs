-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

multipleOf :: Integral a => a -> a -> Bool
multipleOf n x = (mod x n) == 0

main = print (foldl (+) 0 (filter (\x -> multipleOf 3 x || multipleOf 5 x) [3..999]))
  where
    select n1 n2 x = multipleOf n1 x || multipleOf n2 x
