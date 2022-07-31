A generalized `split` function would produce all solution that the
original `split` function would produce plus two new tuples at the
beginning and at end of the result: the first tuple containing the
empty list and the whole input list and the second tuple containing
the whole input list and the empty list. The `exprs` function, which
uses the `split` function internally, would stuck in an infinite loop,
while it's recursively evaluating all sub-expressions from the input list.
