myInit1 xs = reverse (tail (reverse xs))
myInit2 xs = take (length xs - 1) xs
