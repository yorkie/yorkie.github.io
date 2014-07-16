
The keyword `let` in Rust
=========================

The programming keyword `let` is basic and useful, but very fallible, the reason I’ll show you later.

How it works in Javascript?
---------------------------

In Javascript, we use `var` to define our variable and constants(actually there is no real constants in javascript), very simple, but to state one key point to you:

```js
var x = 10;
var y = x;
console.log(x, y);
```

we could use x and y totally, let us see what happened in these 3 lines.

line 1: specify a variable x, then assign the value 10 to it, in our memory, it apply for blocks to do this.

line 2: specify a variable y, then read the value of previous variable x, copy it to the memory of variable, then come so far we will spend 2x blocks to save the same value, it looks you do sleep in two beds, so luxurious, right?

This is not the failure of Javascript, in fact in C-style language family, all the members always looks so wasteful.

How it works in Rust?
---------------------

```
let x = 10;
let y = x;
print!("x:{}", x);
```

The line 3 could not be executed correctly, because the x has been moved to y, please notice this: rust does move, not copy.

It indicates the program only waste 1x(itself) blocks in memory, that’s the reason why I think the program written by rust is better than other languages.

At my beginner of learning rust, this feature(bug at that time) impede me more or less, I think you are, too, then next section, I wanna show you how to skip this hinder, and then enjoy the fun with Rust.

Tip: take your brain out first and then in something about Rust
---------------------------------------------------------------

Yeah, you must change your brain in a way, I can compare this problem to compute process.

The keyword `var` is very similar with NPM, it does much redundancies IMO(In my opinion), but NPM use disk, it is cheap and easy to gain, but memory is not. Once you consider programming in this way, it is easy to skip this `let` hinder, actually the meaning of this creative way to define variable just guide us(programmers, geeks) to the right road: save your precious resouces ASAP.

End
----------------

Rust ever has amount number of features that introduced by its developers, however the language is going, it is valuable to you.

Rust Language: [http://rust-lang.org](http://rust-lang.org)
Github: [https://github.com/rust-lang/rust](https://github.com/rust-lang/rust)
