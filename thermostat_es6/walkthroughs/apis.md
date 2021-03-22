# Walkthrough - Thermostat: APIs

[Back to the Challenge](../apis.md)

Let's start by experimenting in the console.  You'll need to register for an API key - follow the instructions on the page to obtain one.

According to the documentation, we need to make a call to `http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=YOURAPIKEY` to get the weather for London. Let's see what that returns in the console, using a basic `fetch` request:

```javascript
// console
fetch('http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=a3d9eb01d4de82b9b8d0849ef604dbed').then(function(response) {
  console.log(response);
});
```

Inspect the object passed in argument to the callback of `then`. This is not the actual data, but it represents the HTTP Response we got from the server. In order to retrieve the data from it (which is what we're interested in), we need another step - returning `response.json()` from the callback, and then get the JSON data using another `then` call.

```javascript
// console
fetch('http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=a3d9eb01d4de82b9b8d0849ef604dbed')
  .then(function(response) {
    return response.json()
  })
  .then(function(data) {
    console.log(data) // our response data!
  });
```

Click around the object, and find the temperature - it should be under `main`. However, the temperature seems to be above 270, which doesn't seem right. On further inspection of the API documentation, you can pass an additional parameter to the request to make sure our request returns a metric unit, in this case Celcius:

```javascript
// console
fetch('http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=a3d9eb01d4de82b9b8d0849ef604dbed&units=metric')
  .then(function(response) {
    return response.json()
  })
  .then(function(data) {
    console.log(data.main.temp) // our response data!
  });
```

Now that you have the information that you need, you can put it on the page. Add some HTML to hold the result:

```html
<section>
  <h1>Current temperature: <span id="current-temperature"></span></h1>
</section>
```

And display it on page load:

```javascript
// interface.js, within the document.addEventListener('DOMContentLoaded' ... ) callback
fetch('http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=a3d9eb01d4de82b9b8d0849ef604dbed&units=metric')
  .then(function(response) {
    return response.json()
  })
  .then(function(data) {
    document.querySelector('#current-temperature').innerText = data.main.temp;
  });
```

You now want to load this dynamically, based on the user's selection. One way you can do this is to have a selector with pre-defined cities, and some JavaScript to detect the change:

```html
<section>
  <h1>Current temperature: <span id="current-temperature">20</span></h1>
  <select id="current-city">
    <option value="London">London</option>
    <option value="New york">New York</option>
    <option value="Paris">Paris</option>
    <option value="Tokyo">Tokyo</option>
  </select>
</section>
```

```javascript
// interface.js
var selectElement = document.querySelector('#current-city');
selectElement.addEventListener('change', function(event) {
  var city = event.target.value;
  
  fetch('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid=a3d9eb01d4de82b9b8d0849ef604dbed&units=metric')
    .then(function(response) {
      return response.json()
    })
    .then(function(data) {
      document.querySelector('#current-temperature').innerText = data.main.temp;
    })
});
```

Or, you can let the user type in whatever city they want:

```html
<section>
  <h1>Current temperature: <span id="current-temperature">20</span></h1>
  <form id="select-city">
    <input id="current-city" type="text" placeholder="Enter a city"></input>
    <input type="submit"></input>
  </form>
</section>
```

```javascript
// interface.js
document.querySelector('#select-city').addEventListener('submit', function(event) {
  event.preventDefault();
  var city = document.querySelector('#current-city').value;
  
  fetch('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid=a3d9eb01d4de82b9b8d0849ef604dbed&units=metric')
    .then(function(response) {
      return response.json()
    })
    .then(function(data) {
      document.querySelector('#current-temperature').innerText = data.main.temp;
    })
})
```

Either way, that `fetch` part is looking a bit messy - you can extract it to a function that's a bit clearer:

```javascript
// interface.js
function displayWeather(city) {
  var url = 'http://api.openweathermap.org/data/2.5/weather?q=' + city;
  var token = '&appid=a3d9eb01d4de82b9b8d0849ef604dbed';
  var units = '&units=metric';
  fetch(url + token + units)
    .then(function(response) {
      return response.json()
    })
    .then(function(data) {
      document.querySelector('#current-temperature').innerText = data.main.temp;
    })
}
```

And refactor the existing code:

```javascript
// interface.js

displayWeather('London');

document.querySelector('#select-city').addEventListener('submit', function(event) {
  event.preventDefault();
  var city = document.querySelector('#current-city').value;
  
  displayWeather(city);
})

```

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/apis.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/apis.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/apis.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/apis.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/apis.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
