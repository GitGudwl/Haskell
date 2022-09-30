-- soal 6

primecheck :: Integral a => a -> Bool
primecheck x = all (\y -> x `mod` y /= 0) [2 .. (x - 1)]

-- return list of prime number from 2 to n
primes :: Integral a => a -> [a]
primes n = filter primecheck [2 .. n]

main :: IO ()
main = do
  mynumber <- getLine
  let number = read mynumber :: Int
  print $ primes number