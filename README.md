react-autoupdate-time
=====================

Renders a &lt;time> element that autoupdates at a configurable interval.

````javascript
var date = new Date();
<AutoupdateTime value={date} />
````

Set custom update interval (defaults to 3000 miliseconds).
````javascript
var date = new Date();
<AutoupdateTime value={date} interval=1000 />
````

Uses [moment.js](http://momentjs.com/) internally to [render a relative
time](http://momentjs.com/docs/#/displaying/fromnow/) e.g. "an hour ago".
