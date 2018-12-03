-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

tuples :: Integer -> [(Double, Double)]
tuples n = [(fromIntegral a, fromIntegral b) | a <- [1..quot n 3], b <- [a + 1..quot n 2]]

obey :: Double -> (Double, Double) -> Bool
obey n (a, b) = a + b + sqrt(a^2 + b^2) == n

prod :: (Double, Double) -> Integer
prod (a, b) = floor (a * b * sqrt(a^2 + b^2))

main = print (map prod (filter (obey 1000) (tuples 1000)))
