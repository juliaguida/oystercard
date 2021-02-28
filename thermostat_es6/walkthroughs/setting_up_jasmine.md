# Walkthrough - Setting up Jasmine

[Back to the Challenge](../setting_up_jasmine.md)

To get started, go to the [latest build page for Jasmine](https://github.com/jasmine/jasmine/releases) and download the most recent standalone version in a zip file.

Once you have downloaded the `.zip` archive, copy it to your FizzBuzz project file (assuming you are currently in the directory) and extract it:

```sh
cp -r ~/Downloads/jasmine-standalone-2.3.4.zip .
unzip jasmine-standalone-2.3.4.zip
```

Open the 'SpecRunner.html' file in your browser as a sanity check. It should look like this:

![Jasmine SpecRunner](/images/jquery-sanity-check.png)

And your folder structure should look like this:

```sh
→ tree
.
├── MIT.LICENSE
├── SpecRunner.html
├── lib
│   └── jasmine-2.3.4
│       ├── boot.js
│       ├── console.js
│       ├── jasmine-html.js
│       ├── jasmine.css
│       ├── jasmine.js
│       └── jasmine_favicon.png
├── spec
│   ├── PlayerSpec.js
│   └── SpecHelper.js
└── src
    ├── Player.js
    └── Song.js

4 directories, 12 files
```

As you look through the files in `spec` and `src`, see if you can notice the underlying concepts shared by Jasmine and RSpec (two examples provided here - can you spot more?)

`describe` blocks:

```javascript
describe("Player", function() {
  // code
});
```

```ruby
describe Player do
  # code goes here
end
```

Testing for errors:

```javascript
it("should throw an exception if song is already playing", function() {
  player.play(song);

  expect(function() {
    player.resume();
  }).toThrowError("song is already playing");
});
```

```ruby
it "should throw an exception if song is already playing" do
  expect { player.resume }.to raise_error("song is already playing")
end
```

You can now make some files for your version of FizzBuzz:
```sh
touch src/fizzBuzz.js spec/fizzBuzzSpec.js
```

And within `SpecRunner.html`, you can change the following lines from

```javascript
<!-- include source files here... -->
<script src="src/Player.js"></script>
<script src="src/Song.js"></script>

<!-- include spec files here... -->
<script src="spec/SpecHelper.js"></script>
<script src="spec/PlayerSpec.js"></script>
```

to

```javascript
<!-- include source files here... -->
<script src="src/fizzBuzz.js"></script>

<!-- include spec files here... -->
<script src="spec/fizzBuzzSpec.js"></script>
```

>Note: while Jasmine's own example files use [PascalCase](http://c2.com/cgi/wiki?PascalCase), most JavaScript files are usually named using [lowerCamelCase](http://c2.com/cgi/wiki?LowerCamelCase)

![Network tab with entries for fizzBuzz.js and fizzBuzzpec.js](../../images/network-tab-jasmine-files-loaded.png)

Open the Network tab in the Chrome dev tools.  You should see entries for `fizzBuzz.js` and `fizzBuzzpec.js` that say "Finished" in the Status column.

Finally, delete all the files in `spec` and `src` that are not needed - your folder structure should look like this:

```sh
→ tree
.
├── MIT.LICENSE
├── SpecRunner.html
├── lib
│   └── jasmine-2.3.4
│       ├── boot.js
│       ├── console.js
│       ├── jasmine-html.js
│       ├── jasmine.css
│       ├── jasmine.js
│       └── jasmine_favicon.png
├── spec
│   └── fizzBuzzSpec.js
└── src
    └── fizzBuzz.js

4 directories, 10 files
```

[Forward to the Challenge Map](../README.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/setting_up_jasmine.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/setting_up_jasmine.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/setting_up_jasmine.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/setting_up_jasmine.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=thermostat_es6/walkthroughs/setting_up_jasmine.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
