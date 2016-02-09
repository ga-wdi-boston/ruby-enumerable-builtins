![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Enumerable Built-ins

## Instructions

Fork, clone, branch (training), and bundle install.

## Objectives

By the end of this lesson, students should be able to:

- Define “list” and give two examples of lists in Ruby.
- Diagram the flow of Enumerable methods as invoked through concrete classes.
- Give two examples of methods defined in Enumerable and available on all three of Range, Array, and Hash.

## Introduction

A list is an abstract data type (ADT) that represents an ordered list of items.  The list may be empty.  If not empty, the list has a first item followed by a list containing the rest of the items. This is not a rigorous definition.

Enumerable is Ruby's implementation of the `list` abstraction.

## Lists are ubiquitous

### Brainstorm

What are some types of lists?

What are some things we'd put on those lists?

## Arrays as lists

In JavaScript, the concept of list is built into Array. In Ruby, it is built into Enumerable which is included in Array.

### Deeper look

The following table contains a mapping of some of the methods that potentially touch all the elements in an Array.

JavaScript | Ruby
---------- | ----
`every` | `all?`
`filter` | `select`
`forEach` | `each`
`map` | `map`
`reduce` | `reduce`
`some` | `any?`

Where is method `all?`?  Method `reduce`?

## The Enumerable Module

Ruby's [Enumerable](http://ruby-doc.org/core-2.2.3/Enumerable.html) module provides many list processing methods relying on a class's `each` method.  Ruby's Array class includes the Enumerable module.

### Modules

In Ruby, modules serve two purposes.  The first is to create name spaces.  The second is to supply common behavior to a class.

The `Math` module hides mathematical functions inside the name-space `Math` so that short and common names don't pollute the global name-space (e.g. `Math::Pi` or `Math.cos`).

The `Enumerable` module contains code implementing list methods in terms of a concrete classes `each` method.

### The connection

Let's diagram the delegation from Array to Enumerable and back.

## Ranges as lists

Ruby's [Range](http://ruby-doc.org/core-2.2.3/Range.html) class provides a convenient way to express sequence of integers. Range includes Enumerable so we can treat instances as a list.

### Demo

```ruby
> rng = 1..10
```

### Code along

Let's explore using Range as an enumerable in `bin/code_along.rb`.

### Lab

In `bin/lab.rb`, use `reduce` to calculate the sum of all the even numbers in a Range.  All the odd numbers.  Now use `each_with_object` to do both at once.

## Hashes as lists

[Hash](http://ruby-doc.org/core-2.2.3/Hash.html) includes Enumerable so we can treat it as a list.

### Demo

```ruby
> h = {}
```

### Code along

Let's explore using Hash as an enumerable in `bin/code_along.rb`.

### Lab

In `bin/lab.rb`, use `reduce` to accumulate all of the keys and values in a Hash as Arrays.  Store these keys and values in a memo Hash with the keys `:keys` and `:values`.  Now use `each_with_object` to do the same.

## Additional resources

Two images to give you a sense of the relationships in Ruby.

- [Hand drawn](http://farm6.staticflickr.com/5443/10075536704_84aa13676a_o.jpg)
- [And not](http://i.stack.imgur.com/1taqB.png)

These images may diverge slightly from the actual relationships, Ruby is an evolving language, but do give a sense of much of what goes on.

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
