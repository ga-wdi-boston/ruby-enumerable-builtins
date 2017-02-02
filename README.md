[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Enumerable Built-ins

## Prerequisites

-   [Ruby Array Methods](https://github.com/ga-wdi-boston/ruby-array-methods)

## Objectives

By the end of this talk, developers should be able to:

-   Define “list” and give two examples of lists in Ruby.
-   Diagram the flow of Enumerable methods as invoked through concrete classes.
-   Give two examples of methods defined in Enumerable and available on all
    three of Range, Array, and Hash.

## Preparation

1.  Fork and clone this repository.
 [FAQ](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
1.  Create a new branch, `training`, for your work.
1.  Checkout to the `training` branch.
1.  Install dependencies with `npm install`.

## Introduction

A list is an abstract data type (ADT) that represents an ordered list of items.
The list may be empty.  If not empty, the list has a first item followed by a
list containing the rest of the items. This is not a rigorous definition.

Enumerable is Ruby's implementation of the `list` abstraction.

## Lists are ubiquitous

What are some types of lists? Let's brainstorm.

What are some things we'd put on those lists?

## Arrays as lists

In JavaScript, the concept of list is built into Array. In Ruby, it is built
into Enumerable which is included in Ruby's
[Array](https://ruby-doc.org/core-2.3.1/Array.html).

The following table contains a mapping of some of the methods that potentially
touch all the elements in an Array. We've already covered most of these in
[Ruby Array Methods](https://github.com/ga-wdi-boston/ruby-array-methods).

| JavaScript | Ruby     |
| ---------- | ----     |
| `every`    | `all?`   |
| `filter`   | `select` |
| `forEach`  | `each`   |
| `map`      | `map`    |
| `reduce`   | `reduce` |
| `some`     | `any?`   |

But, wait. Where is the method `all?` defined? The method `reduce`? They're
from the `Enumerable` mix-in, and will be the focus of this talk. "Enumerable"
is another word for "iteratable", so we can say that each of Ruby's `Array`,
`Range`, and `Hash` types behave as something that can be iterated-over.

## The Enumerable Module

Ruby's [Enumerable](https://ruby-doc.org/core-2.3.1/Enumerable.html) module
provides many list processing methods relying on a class's `each` method.
Ruby's Array class includes the Enumerable module.

### Modules

In Ruby, modules serve two purposes.  The first is to create name spaces. The
second is to supply common behavior to a class.

The `Math` module hides mathematical functions inside the name-space `Math` so
that short and common names don't pollute the global name-space (e.g.
`Math::PI` or `Math.cos`).

The `Enumerable` module contains code implementing list methods in terms of a
concrete class's `each` method.

### The connection

Let's diagram the delegation from Array to Enumerable and back.

## Ranges as lists

Ruby's [Range](http://ruby-doc.org/core-2.3.0/Range.html) class provides a
convenient way to express a sequence of integers. Range includes Enumerable so
we can treat instances as a list.

### Demo - Range

```ruby
rng = 1..10
```

### Code along - Range

Let's explore using Range as an enumerable in `bin/range_list.rb`.

### Lab - Range

In `bin/range_lab.rb`, use `reduce` to calculate the sum of all the even
numbers in a Range. All the odd numbers.  Now use `each_with_object` to do both
at once.

Hint: [Better Hash Injection using
each_with_object](http://technology.customink.com/blog/2014/10/14/better-hash-injection-using-each-with-object/)

## Hashes as lists

[Hash](http://ruby-doc.org/core-2.3.0/Hash.html) includes Enumerable so we can
treat it as a list.

### Demo - Hash

```ruby
h = {}
```

### Code along - Hash

Let's explore using Hash as an enumerable in `bin/hash_list.rb`.

### Lab - Hash

In `bin/hash_lab.rb`, use `reduce` to accumulate all of the keys and values in
a Hash as Arrays. Store these keys and values in a memo Hash with the keys
`:keys` and `:values`. Now use `each_with_object` to do the same.

## Additional resources

Two images to give you a sense of the relationships in Ruby.

-   [Hand drawn](http://farm6.staticflickr.com/5443/10075536704_84aa13676a_o.jpg)
-   [And not](http://i.stack.imgur.com/1taqB.png)

These images may diverge slightly from the actual relationships, Ruby is an
evolving language, but do give a sense of much of what goes on.

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
