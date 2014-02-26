
Core Dump Tutorial
=========================

Hi, my readers, I shall do share a little experience about a debugging tip with you.
As you have seen, what I want to tell you about is core dump. Stuff beforehand, we need
make a description for u about what is the core dump.

> In computing, a core dump (in Unix parlance), memory dump, or system dump[1] 
> consists of the recorded state of the working memory of a computer program 
> at a specific time, generally when the program has terminated abnormally 
> (crashed).

Yes, core dump is an awesome tool that provides traces of a program in Runtime, especially
in production.

And then, I will show you a total usage of core dump in MacOS.

### Write a program that maybe crushed and after that would create a core dump file

See [signals table](https://developer.apple.com/library/mac/documentation/darwin/reference/manpages/man2/sigaction.2.html#//apple_ref/doc/man/2/sigaction) first, then we know a signal like SIGQUIT(3), SIGILL(4),
SIGTRAP(5) and others could occured OS would create a core image what we need.

Then we create a source file named `core-dump-file.c`:
```c
#include <unistd.h>
#include <signal.h>

int main(int argc, char ** args) {
  pid_t pid = getpid();
  kill(pid, 3);
}
```

And compiling it and run:
```sh
$ gcc core-dump-file.c -o core-dump-file
$ ./core-dump-file
```

Next, we get a output `Quit: 3`, everything is ok, right?

### Enable Core Dump in your OS

Actually I want to say no, in this [OSX man page](https://developer.apple.com/library/mac/documentation/darwin/reference/manpages/man5/core.5.html), we see:

> This memory image is written to a file named by default core.pid, where pid is the
> process ID of the process, in the /cores directory, provided the terminated process 
> had write permis-sion permissionsion in the directory, and the directory existed.

What we really expected is we can find a core dump file once my program is crushed within a specified
signal. However just example, we could not find any files in `/cores/`, that is incorrect behavior.

The reason is that we have ever not enabled core dump in our OSX. Just run below:
```sh
$ ulimit -c
> 0
$ ulimit -c unlimited
$ ulimit -c
> unlimited
```

All right, then again run `./core-dump-file`, you would get a different output like:
```sh
Quit: 3 (core dumped)
```

### lldb/gdb and Core Dump

In the end, we just run below command:
```sh
$ lldb ./core-dump-file /cores/core.19504
```

Now we could get a trace log of your just curshed program.
This is a best functional practice once your programs have crushed in production environment.

### Refs

1. [Core Man Page in OSX](https://developer.apple.com/library/mac/documentation/darwin/reference/manpages/man5/core.5.html)
2. [Where is my core dump?](http://pfigue.github.io/blog/2012/12/28/where-is-my-core-dump-archlinux/)
3. [Core dump - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Core_dump)

