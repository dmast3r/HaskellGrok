## Functions

Functions in Haskell are pure, which means:
1. They don't do any side-effects. That is, they don't modify the value of a variable (including the parameters), modify memory or do I/O.
2. They always return the same output for a given input.

### Declaring a Function
1. For declaring a function, we use the *Hindley-Milner* type notation.
2. The function declaration must start with a lower-case letter.

### Defining a Function
To define a function in Haskell, we can take advantage of several features that Haskell provides us with, such as:

1. Pattern Matching
2. Guards
3. Where
4. Let
5. Case Expression