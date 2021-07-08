# `http-server`

A small library that runs a local server to serve static assets like HTML, CSS and JavaScript.  It's useful for serving a frontend website locally.

## Prerequisites

[Node](node.md) and [npm](npm.md) installed.

## Running from the command line

In your project, run:

    $ cd root/of/your-project/
    $ npm install http-server --save
    $ node node_modules/http-server/bin/http-server

Browse your project at the URL in the console output.

## Running from your code (for example, in your tests)

This is useful when you need to serve a version of your project for your tests to run against.

    $ cd root/of/your-project/
    $ npm install http-server --save-dev

```js
const httpServer = require("http-server");
const path = require("path");

const pathToHtmlAndJsFiles = path.join(__dirname, "path/from/current/dir/to/html/and/js/files");
const server = httpServer.createServer({ root: pathToHtmlAndJsFiles });
server.listen(3000);
```

> If you get an `EADDRINUSE` error, you may be forgetting to close your server after your test has run.  Or, maybe you are running a server on the same port in another terminal tab.

## Resources

- [`http-server` documentation on npmjs.com](https://www.npmjs.com/package/http-server)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/http_server.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/http_server.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/http_server.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/http_server.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/http_server.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
