-- Haskell

gcd :: Integer -> Integer -> Integer
gcd a b = if b > 0 then gcd b (mod a b) else a

main = do
    putStrLn "test"
    let n = 1000
    let a = [0..n-1]
    print $ foldl (+) 0 (map (\i -> foldl (+) 0 (map (`gcd` i) a)) a)
