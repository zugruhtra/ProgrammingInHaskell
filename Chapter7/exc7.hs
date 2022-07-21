import Data.Char

type Bit = Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

chop9 :: [Bit] -> [[Bit]]
chop9 [] = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

parity :: [Bit] -> Bit
parity bits = if odd (sum bits) then 1 else 0

addParity :: [Bit] -> [Bit]
addParity bits = parity bits : bits

checkParity :: [Bit] -> [Bit]
checkParity bits | parity payload == head bits = payload
                 | otherwise = error "Parity check failed" payload
                 where payload = tail bits

encode :: String -> [Bit]
encode = concat . map (addParity . make8 . int2bin . ord)

decode :: [Bit] -> String
decode = map (chr . bin2int . checkParity) . chop9

channel :: [Bit] -> [Bit]
channel = id

transmit :: String -> String
transmit = decode . channel .encode

