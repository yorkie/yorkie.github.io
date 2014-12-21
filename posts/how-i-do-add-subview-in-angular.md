How I do add subview in angular
================================

Subview in angular 1.0 is still an issue to perplex someone, if you are someone in this case, you can direct to use [ui-router](https://github.com/angular-ui/ui-router), which should be inspired by react's state.

But here what I wanna share is a very small way, which you mustn't download any code from internet or learn much more docs, to implement this sub-view or sub-router by using angular directive with getter in ES6(correct me if wrong, sending email: yorkiefixer@gmail.com or hack my site).

Okay, Let's start from a simple html:

```html
<view></view>
```

Here just define a directive name, feel free to change here `view` to yet another what you want.

```js
app.controller('ProjectHomeController', function ($scope) {
  // home controller
});
app.directive('view', function ($compile, $routeParams) {
  return {
    restrict: 'E',  // here we use E
    get templateUrl () {
      return '/partials/project-' + ($routeParams.tab || 'home') + '.html'
    },
    get controller () {
      return 'Project' + firstUpperCase($routeParams.tab || 'home') + 'Controller'
    }
  };
});
```

As you has known from the above code snippet, we need to register controllers that we need to use in our sub-router or sub-view, at the other hand, `$routeParams.tab` is that I was using angular router like this:

```js
$router.when('/me/project/:name/:tab', fn)
```

Then if you don't use angular router or you have yet another url string, you are able to do generate your `templateUrl` and `controller` depends on browser built-in global variable `location.href` or your own `$routeParams`.

Now an agile, flex and tiny router-based angular view has born from your hands, and you feel free to expand your children when he is growing, all is on you. 

This is open for everyone on the internet, Good luck :)
