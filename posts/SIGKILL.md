
SIGKILL
=============

The problem is about `forever`. While using this module to start a script, everything is OK, at an opposite of this operation, everything is not pretty good. Following simple codes is an example:

```js
process.on("exit",function(){
  // cleanup some bad stuff, failed stuff.
});
```

At 1st time, I did a lookup in forever, then I found it stop a script or process by killing it, namely call the signal named `SIGKILL`. Codes is fixed on:
[link](https://github.com/yorkie)


I was actually thinking that the full success would be coming, such that I coded this:

```js
process.on("SIGKILL",function(){
  // cleanup some bad stuff, failed stuff.
}
```

Fool, fuck self-confidence.
Had googled some blogs, I realized this way is absolutely wrong. I cannot handle the `SIGKILL`, It's an absolute quit system signal, then I know why `forever` stop scripts by this way.

But what is this problem's solution? Of course I find an answer to solve it, like that:

```js
// head of script
// cleanup some bad stuff, failed stuff, 
//      what i wanna clean in while previous process is killed
```

That means that I make cleanup in next startup for this script.
