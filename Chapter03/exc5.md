Two function of the same type are equal if they always return equal results
for equal arguments.  So both functions are identical and may be differing
only in their names. For practical reasons, it is not feasible to implement
the same functionality twice (DRY).  Furthermore, when an argument or result
type consists of infinite members (e.g. `Integer`), it is impossible to
show equallity, because you have to check for every argument/result type.
However, implementing the `Eq` class for function types with discrete values
for their argument/result types may be feasible to show, that different
implementations of certain functionallity are equal.
