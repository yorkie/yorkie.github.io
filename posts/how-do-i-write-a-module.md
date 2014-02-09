
Do write a node module with 2 tips
==========================

Hello, there. Today I would show you how I do write a node module, just by giving you 2 tips about this topoc.

* Don't write `package.json` by yourself, just run `npm init` after you want to create module.

* Do sync with github and npm like below:

```bash
$ cd /path/your-module/.git/hooks
$ vi pre-push
```

Then copy this to your `vi` screen:
```
#!/usr/bin/env bash
npm publish --force
```

Saved it, and back to terminal:
```
$ chmod +x pre-push
```

Then when you pushed code to github, it would sync them to npm automaticly.