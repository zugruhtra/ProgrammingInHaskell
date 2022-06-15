(||) :: Bool -> Bool -> Bool
False || False = False
False || True = True
True || False = True
True || True = True
