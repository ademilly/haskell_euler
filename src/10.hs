-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

primes :: [Integer]
primes = 2 : 3 : prs
  where
  1 : p : candidates = [6 * k + r | k <- [0..], r <- [1, 5]]
  prs                = p : filter isPrime candidates
  isPrime n          = all (not . divides n) $ takeWhile (\m -> m * m <= n) prs
  divides n m        = n `mod` m == 0

main = print $ sum $ takeWhile (\x -> x < 2000000) primes
