-- soal 2

gcde :: Int -> Int -> Int
gcde x y
  | x == y = x
  | x > y = gcd (x - y) y
  | x < y = gcd x (y - x)

main :: IO ()
main = do
  number1 <- getLine
  number2 <- getLine
  let x = read number1 :: Int
  let y = read number2 :: Int

  print (gcde x y)
