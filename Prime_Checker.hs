-- soal 4

primecheck :: Integral a => a -> Bool
primecheck x = all (\y -> x `mod` y /= 0) [2 .. (x - 1)]

main :: IO ()
main = do
  myScore <- getLine
  print $ primecheck (read myScore :: Int)