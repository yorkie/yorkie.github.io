
Tip of Loopback
================

This is not a travel-related note, and this doesn’t cover any about the loopback address 127.0.0.1(if you know this), and this is not covering any aspect of the web framework [loopback.io](https://loopback.io).

Hey, I’m just going to tell you the story of me using loopback.io framework since 1 month ago.

Background
================

Few month ago, I was still working on a New York startup and an Asian startup, we definitely were using express. The NYC project looks pretty good in front-end because of we were not using expressjs, however the backend within the express framework, it always went worse, and we had to refactor code over and over, if there are some time more than 1 week, that we didn’t clean the stale lines, the whole codebase would go some place where is hard to maintain and develop.

The plight of using express did go worse in the Asian team, even though we still have other issues on this team, actually the members of the team are from the whole Asia area, including China mainland, Japan, Vietnam Canada and Indian, and we are still working remotely in different cities and time zones.

I have to say, we did always delay the progress because of the architecture express-based are really bad. There are too many bike-shilds to distract us. Until one day in last month, I was nominated as the backend team leader, then the first task of mine is using loopback.io to make development more agile.

Why not choosing Meteor?
========================

As for choosing loopback over meteor, the another more pop web framework at Node.js, the reason is super simple that is we only need an API service.

What did loopback.io help us
============================

The most reason of using loopback is we can just implement most business needs by only updating the model file. Plus, the StrongLoop team has built many built-in models like UserModel, PersistentModel and etc. They are easy to use for most of your business needs.

Thanks to the clear structure of source of loopback project(Github: https://github.com/strongloop/loopback), we can learn and track what had been happened easily and quickly.

After comparing the complexity between codebases, we are clearly to get the following report:

- The total of lines did reduce by 70%
- The lines of controllers did reduce by 90%
- The lines of models did reduce by 10%
- The lines of views keeps unchanged
- The lines which are not related to business logic did reduce by 99%

The improvements are obviously, especially the 5th are what I strongly suggest you should use loopback in your business project. The reason is exactly obvious, there are too many failures in my previous projects are caused by bike-sheilds problems.

What did loopback.io bother me
===============================

Yup, as you have also concerned before, the loopback’s community is not activity than express, koa and Meteor.

But this is absolutely Okay for using this framework, again thanks to the clear structure of source of loopback, we can easily track problems by reading documentation and source code.

Trust me, that’s really not too hard for most of node developers, because I’m just doing this in my current projects.

If you have any problems with using loopback, you could send me your question to my email address: yorkiefixer@gmail.com.

By the way, I’m not really the staff from StrongLoop, Inc. The initial purpose of this story is helping developers to write more robust and reliable apps in simplest way.

