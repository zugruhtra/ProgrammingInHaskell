The definition of `sum` is:

```hs
  sum [] = 0
  sum (n:ns) = n + sum ns
```

So, for `sum [x]`:

```
    sum [x]
=
    x + sum []
=
    x + 0
=
    x
```
