-- soal 1

scorecheck :: Integral a => a -> String
scorecheck x
  | x > 80 = "A"
  | x > 75 = "AB"
  | x > 70 = "B"
  | x > 65 = "BC"
  | x > 60 = "C"
  | x > 50 = "D"
  | otherwise = "E"

main :: IO ()
main = do
  putStr "Cek : "
  myScore <- getLine
  print $ scorecheck (read myScore :: Int)