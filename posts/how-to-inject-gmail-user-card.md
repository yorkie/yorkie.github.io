
How to inject DOM to GMail's user card
======================================

I was working on chrome plugin for GMail in this week, and at first I'm assigned
to make a tooltip that's shown when an email address is mouse over, and hidden once
move out of that element.

The interaction is same to gmail's user card, so if I was following this, it may be
mess to users because of two "card" that will be shown simultaneously.

Ok, This is the problem that I met in this week, let's address the issue more gracefully.

### Caveat

Gmail's user card is an `iframe` tag within a different domain from gmail's like below:

- Gmail: mail.google.com
- UserCard: apis.google.com

So when you try to access that anything in the cross-domain iframe's document by:

```js
document.querySelector('#cross-iframe-id').contentWindow.document;
```

It will prints the error by chrome:

```
SecurityError: Blocked a frame with origin "https://mail.google.com" from accessing a cross-origin frame.
```

This is prohibited by any HTTP browsers of course included chrome, but chrome plugins are the buster.

### Plugin Permission

In `manifest.json`, I just added one domain like this:

```
{
  ...
  permission: [
    "*://mail.google.com/*",
    "*://apis.google.com/*"
  ],
  ...
}
```

Okay, then write:

```js
var usercard = document.querySelector('#cross-iframe-id').contentWindow.document;
console.log(usercard);
```

in your plugin scripts, then run it, now you are able to get document and do any DOM injection based on
this document such as add a line of your company name, change the card avatar etc.

In fact the `permission` field will be used at firefox add-on, for more details you could visit: 
https://developer.mozilla.org/en-US/Add-ons/SDK/Tools/package_json

