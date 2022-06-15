(||) :: Bool -> Bool -> Bool
True || _ = True
_ || True = True
_ || _ = False
