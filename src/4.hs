-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome :: Integer -> Bool
isPalindrome n = show n == reverse (show n)

mult :: [Integer] -> [Integer]
mult []       = []
mult (x : []) = x * x : []
mult (x : xs) = x * x : (map (\n -> x * n) xs) ++ mult xs

main = print (maximum (filter isPalindrome (mult [999, 998..100])))
