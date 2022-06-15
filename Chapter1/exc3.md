
The definition of `product` is:

  product [] = 1
  product (n:ns) = n * product ns

So, for `product [2,3,4]`:

>     product [2,3,4]
> =
>     2 * product [3,4]
> =
>     2 * 3 * product [4]
> =
>     2 * 3 * 4 * product []
> =
>     2 * 3 * 4 * 1
> =
>     24
    
