# Lists, Ranges and Tuples

## Basic Functions

- `succ`: The successor of a value. For instance, `succ 8` returns `9`.
- `min`: Takes two things and returns the one that's lesser. Example: `min 9 10` returns `9`.
- `max`: Takes two things and returns the greater one. Example: `max 100 101` returns `101`.

## List
In Haskell, lists are internally implemented as a linked list. Strings in Haskell are list of chars. Haskell lists support both the append and prepend operation. However, since Haskell doesn't do any side-effects, that is, it doesn't change the existing data, the append operation is `O(N)`, whereas the prepend operation is `O(1)`.

- Use the `++` operator to append. For example, `[1, 2] ++ [3, 4]` returns `[1, 2, 3, 4]`.
- Use the `:` operator to prepend. For example, `'H':"ello World"` returns `"Hello World"`.

However, as mentioned earlier, one should prefer prepend in-place of append when doing these operations for lists of large lengths.

## List Operations

- `head`: Takes a list and returns its head. The head of a list is basically its first element.
- `tail`: Takes a list and returns its tail. In other words, it chops off a list's head.
- `last`: Takes a list and returns its last element.
- `init`: Takes a list and returns everything except its last element.
- `length`: Takes a list and returns its length.
- `null`: Checks if a list is empty. If it is, it returns `True`, otherwise `False`.
- `reverse`: Reverses a list.
- `take`: Takes number `n` and a list. It extracts `n` number of elements from the beginning of the list.
- `drop`: Works in a similar way as `take`, but it drops the number of elements from the beginning of a list.
- `maximum`: Takes a list of stuff that can be put in some kind of order and returns the biggest element.
- `minimum`: Returns the smallest element of a list.
- `sum`: Takes a list of numbers and returns their sum.
- `product`: Takes a list of numbers and returns their product.
- `elem`: Takes a thing and a list of things and tells us if that thing is an element of the list. It's usually called as an infix function.
- `concat`: Takes a list of list and flattens it. 

## Ranges

- Ranges are a way of making lists that are arithmetic sequences of elements that can be enumerated.
- For sequences with a difference of 1, a list can be constructed from range by specifying the first and the last element. For example, `[1..10]`, `['a..z']`, `['A'..'Z']`.
- In cases where difference is not 1, one has to specify the first, the second and the last element. For example: `[2, 4..100]` generates even numbers in the range [2, 20], `[20, 19..1]` generates a list of numbers in the range [1, 20] but in the reverse order.
- Skipping the second element would generate an infinite range. For instance, `[1..]`, would generate an infinite list of natural numbers.
- `cycle`: Takes a list and cycles it into an infinite list. If you just try to display the result, it will go on forever so you have to slice it off somewhere.
- `repeat`: Takes an element and produces an infinite list of just that element. It's like cycling a list with only one element.
- `replicate`: Use replicate when you want some number of the same element in a list. `replicate 3 10` returns `[10,10,10]`.

## List Comprehension

- List comprehension is a way to filter, transform and combine lists.
- The syntax is as follows: `[expression | lists, filter]`. For example, `[x^2 | x <- [1..10], rem x 2 == 0]` returns the square of first ten natural numbers which are even.
- Multiple lists can be used while doing list comprehension, in that case, cross-product of the elements will be taken. Example: `[x ++ " " ++ y | x <- ["Cheese", "Butter"], y <- ["Brown Bread", "White Bread"]]` returns `["Cheese Brown Bread","Cheese White Bread","Butter Brown Bread","Butter White Bread"]`.
- Similarly, it's possible to apply more than one filters to the comprehension. `[num | num <- [1..20], num >= 5, even num]` generates a list of numbers in the range [1, 20], which are greater than 5 and are also even.

## Tuples

- Tuples are used when you know exactly how many values you want to combine and its size is fixed.
- They are denoted with parentheses and their components are separated by commas.
- Tuples are uniquely defined by the number of elements and the type of elements present at each position.
- There also exists empty tuples (). The type `()` only has a single element, which is `()`. In this sense, it's similar to the `void` type in C and C++, or the `None` type in Python.

## Tuple Operations
- `fst`: Takes a pair and returns its first component. For example, `fst (1, 2)` returns `1`.
- `snd`: Takes a pair and returns its second component. For example, `snd (1, 2)` returns `2`.
- `zip`: Takes two lists and then zips them together into one list by joining the matching elements into pairs. So, `zip [1, 2] [3, 4]` returns `[(1, 3), (1, 4), (2, 3), (2, 4)]`.
- There are no methods to access elements of a tuple with more than two elements. However, they can easily be defined using pattern matching. Consider for example these functions that are defined to access various elements of a tuple with three elements: `first (x, _, _) = x`, then `first ("Alpha", "Beta", "Gamma")` returns `"Alpha"`. Similarly, `second (_, y, _) = y` and `third (_, _, z) = z` when applied to the same tuple, would return `"Second"` and `"Third"` respectively.
