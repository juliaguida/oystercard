# Calling APIs in Javascript

Javascript is often used in a web browser to make requests to a server API.
For example, in a single-page app your client-side code might want to request
information about a post, parse the response, and display it on the page.

Let's consider an example API endpoint that gets information about one post
in particular. I'll use the command-line tool `curl` to illustrate its usage:

```bash
curl https://jsonplaceholder.typicode.com/posts/1
```

Which responds with:

```json
{
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
}
```

And we'd like to display something like this:

```html
<h1>sunt aut facere repellat provident occaecati excepturi optio reprehenderit</h1>
<p>
  quia et suscipit<br>
  suscipit recusandae consequuntur expedita et cum<br>
  reprehenderit molestiae ut ut quas totam<br>
  nostrum rerum est autem sunt rem eveniet architecto
</p>
```

I'm going to zoom ahead and write the display logic so we can focus on the
unusual part — how to request the data from the API.

Here's the page. Copy it down into a file called `index.html` in a fresh
directory.

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sample page</title>
  </head>
  <body>
    <div id="main">
    </div>

    <script>
      function getPostData() {
        // Hardcode the post data for now.
        return {
          "userId": 1,
          "id": 1,
          "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
          "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
        };
      }

      function renderPost(postData) {
        let postHeadingHTML = `<h1>${postData.title}</h1>`;
        let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
        let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
        return `${postHeadingHTML}${postBodyHTML}`;
      }

      let post = getPostData();
      let rendered = renderPost(post);
      document.getElementById("main").innerHTML = rendered;
    </script>
  </body>
</html>
```

## Using Fetch

There is a function in browser Javascript called fetch. You can read about it
[here](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch).

Here is how it is used at its simplest:

```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1");
```

Looks pretty promising! Let's try it out:

```javascript
function getPostData() {
  return fetch("https://jsonplaceholder.typicode.com/posts/1");
}

function renderPost(postData) {
  let postHeadingHTML = `<h1>${postData.title}</h1>`;
  let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
  let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
  return `${postHeadingHTML}${postBodyHTML}`;
}

let post = getPostData();
let rendered = renderPost(post);
document.getElementById("main").innerHTML = rendered;
```

Load that up in your browser and you'll find it doesn't work. Try to figure out
what's going on here. What is the source of the error? What is the value of
`post`?

Give that some thought before moving on.

## Promises

You should find that within `post` is something that looks like
`Promise<pending>`. If you search around you'll discover that promises are a
kind of object, and that there's some syntax for getting the values out of them.

It looks like this:

```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1").then(response => {
  // We have the response!
});
```

However, `fetch` is clever in that it tells you there's a response before all
the data has been received in case that is useful to you. It's not useful to
us though, so we actually need two layers of promises to get the data:

```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1").then(response => {
  response.json().then(json => {
    // We have the JSON!
    console.log(json);
  });
});
```

Try that out and you'll see in the console that we can get the data! Great.

Now we just have to return it, right? Try that out before moving on.

## Promises... I promise

So that didn't work either.

In some other languages, promises are called futures. They're called futures
because they refer to values that will be received in the future — in this case
the response to our request. As we all know, you can't get things from the
future and use them now.

In fact, when you call `fetch`, Javascript just says "yeah yeah, I _promise_
I'll get that data to you... at some point... ₗₒₛₑᵣ" and then goes ahead and
rudely executes the next line of code without waiting for the response to come
back!

So there is no way to get the values out of promises.

But, you _can_ instruct your program to do things in the future when there _is_
something in that promise. That's what the `then` method is for.

```javascript
fetch("https://jsonplaceholder.typicode.com/posts/1").then(response => {
  response.json().then(json => {
    // Javascript PROMISES to call this function in the FUTURE
    // when the response has been received and the JSON parsed.
  });
});
```

The answer isn't to get the value out of the promise so we can render now, it's
to do the rendering _later_ when the request is received.

So we transform this:

```javascript
function getPostData() {
  return fetch("https://jsonplaceholder.typicode.com/posts/1");
}

function renderPost(postData) {
  let postHeadingHTML = `<h1>${postData.title}</h1>`;
  let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
  let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
  return `${postHeadingHTML}${postBodyHTML}`;
}

let post = getPostData();
let rendered = renderPost(post);
document.getElementById("main").innerHTML = rendered;
```

Into this:

```javascript
function getPostData() {
  fetch("https://jsonplaceholder.typicode.com/posts/1").then(response => {
    response.json().then(post => {
      // ...to here.
      let rendered = renderPost(post);
      document.getElementById("main").innerHTML = rendered;
    })
  })
}

function renderPost(postData) {
  let postHeadingHTML = `<h1>${postData.title}</h1>`;
  let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
  let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
  return `${postHeadingHTML}${postBodyHTML}`;
}

getPostData();
// Move the things we need to happen IN THE FUTURE from here...
```

Which works!

## Refactoring

But it's not very nice! We're calling a bunch of rendering and displaying logic
inside our `getPostData` function. That's not what that function is supposed
to do.

We could rename it to something more generic, but it will become very
problematic as we have to add more and more to our program. That function will
become enormous!

There is a way out. Your functions can also _return_ promises, so that the
code that called it can decide what happens afterwards. Here's how that works:

```javascript
function getPostData() {
  return fetch("https://jsonplaceholder.typicode.com/posts/1");
}

function renderPost(postData) {
  let postHeadingHTML = `<h1>${postData.title}</h1>`;
  let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
  let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
  return `${postHeadingHTML}${postBodyHTML}`;
}

getPostData().then(response => {
  response.json().then(post => {
    let rendered = renderPost(post);
    document.getElementById("main").innerHTML = rendered;
  })
})
```

This is a little better, but still not quite right. That JSON parsing logic
really ought to live in `getPostData`. Handily, we can keep it there like this:

```javascript
function getPostData() {
  return fetch("https://jsonplaceholder.typicode.com/posts/1").then(response => {
    return response.json();
  })
}

function renderPost(postData) {
  let postHeadingHTML = `<h1>${postData.title}</h1>`;
  let postWithLinebreaksHTML = postData.body.replaceAll("\n", "<br>\n");
  let postBodyHTML = `<p>${postWithLinebreaksHTML}</p>`;
  return `${postHeadingHTML}${postBodyHTML}`;
}

getPostData().then(post => {
  let rendered = renderPost(post);
  document.getElementById("main").innerHTML = rendered;
});
```

This relies on a feature of promises that if you return a promise in a `then`,
that promise then replaces the original promise. You can read more about
how promises work on [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises).

And that's it! Almost.

## A final note on security and cross-origin requests

You can't call all APIs in the browser using `fetch`. It would be a big security
risk if I could use `fetch` on a user's behalf to call their bank website!

There are rules around what are called **cross-origin requests**. Put simply
these are requests between code from domain and an API on another. If the
Javascript on your website `coolgames.com` tried to initiate a request to
`fbi.gov`, the browser would block it.

However it is often genuinely useful to make these requests, so there is a
system called CORS (Cross-Origin Resource Sharing) to allow this. To allow this
the API has to set up some special routes and responses. The above API is set up
in this way to permit these cross-origin requests, as are many APIs you will
encounter for use on the web.
