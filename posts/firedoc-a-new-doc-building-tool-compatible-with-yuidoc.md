
Firedoc: a new doc building tool compatible with YUIDoc
=======================================================

In last week, I was starting a new task for [Fireball](https://github.com/fireball-x) team, there are a bundle of new needs for YUIDoc from other team members like the following:

- we need the ability that can define the methods, properties or events under the module over class.
- we need the ability that can generate markdown files.
- we need the ability that can support multiple languages feature in an easy or handy way.

For more features that I have implemented in the Firedoc, you could check this [GUIDE.md](https://github.com/fireball-x/firedoc/blob/master/GUIDE.md).

Yes, as you have found that, the new build tool is fireball-x/firedoc, which is currently used in all my 2 teams.

### The Magic: Generate a markdown-based documentation in your project

The first magic art of this tool is to let you generate own markdown-based documentation automatically. The fast example to show this art is here: https://github.com/fireball-x/firedoc/tree/master/docs, the firedoc itself. I build its documentation via firedoc over the original HTML pages.

To complete this, only there is one line required: https://github.com/fireball-x/firedoc/blob/master/Makefile#L11. Now when you pushed the changes that firedoc did in your local machine, then you will check your live documentation at your Github repo page.

Anyway, now I released this tool to share with you, if you are interested in this project, feel free to use it and submit your suggestion, pull-request or issue, thank you.

