-- Soal 3

isEven :: Integral a => a -> String
isEven n
  | n `mod` 2 == 0 && n > 1 = "Genap Positif"
  | n `mod` 2 == 0 && n < 1 = "Genap Negatif"
  | n `mod` 2 /= 0 && n > 1 = "Ganjil Positif"
  | n `mod` 2 /= 0 && n < 1 = "Ganjil Negatif"
  | otherwise = "Nol"

main :: IO ()
main = do
  number <- getLine
  print $ isEven (read number :: Int)
