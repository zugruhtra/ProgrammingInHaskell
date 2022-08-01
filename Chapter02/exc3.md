The three syntax errors are:

1. Name of the Function starts with uppercase letter
2. Usage of forward ticks instead of backticks for binary function `div`
3. Violation of the Layout Rule: `xs` is not properly indented

A syntactically correct solution would be:

```hs
n = a `div` length xs
  where
      a = 10
      xs = [1,2,3,4,5]
```

