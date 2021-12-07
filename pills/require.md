# Ruby Require: How we use things from other files

- [Cheatsheet](#cheatsheet)
- [Why require?](#why-require)
- [Requiring files relative to the current working directory](#requiring-files-relative-to-the-current-working-directory)
- [Where does require look for files?](#where-does-require-look-for-files)
- [How does `require` know where my Gems are?](#how-does-require-know-where-my-gems-are)
- [How do I require files relative to the current file?](#how-do-i-require-files-relative-to-the-current-file)
- [Should I use the `.rb` extension when requiring?](#should-i-use-the-rb-extension-when-requiring)
- [What happens if I `require` the same file twice?](#what-happens-if-i-require-the-same-file-twice)
- [What's the best way to require files?](#whats-the-best-way-to-require-files)

## Cheatsheet

```ruby
# Require `lib/module.rb` from `spec/module_spec.rb` (using RSpec)
require 'module'

# Require a Gem 'twilio'
require 'twilio'

# Require `sub/file.rb` from `main.rb`
require_relative 'sub/file'

# To set up your project to always load files relative to `<PROJECT>/lib`
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'main' # Now loads `lib/main.rb`
```

## Why require?

When you are first learning Ruby you often put all your code in a single file.
As you grow, your programs will grow too. They will get too big to be easily
navigated. When this happens, it is a good idea to group things and put each
group in its own file.

To do this, you will need to use the Ruby `require` method. It looks like this:

```ruby
require 'filename'
```

This line will go and look for a file called `filename.rb` in a special list of
directories called `$LOAD_PATH`. If it finds it there, it will 'include' it in
this file.

Think of 'including' a file as a bit like copy and paste. Ruby copies the
contents of `filename.rb` and pastes it into the same line the require is on.

## Requiring files relative to the current working directory

A simple place to start is to require one file from another.

Take these two files:

```ruby
# File: greeter.rb

def greet(name)
  puts "Hello, #{name}!"
end
```

```ruby
# File: main.rb

require './greeter'

greet("Michelle")
```

If you then run `main.rb` you will see this:

```shell
; ruby main.rb
Hello, Michelle!
```

Because `require` copies and pastes the contents of `greeter.rb` into `main.rb`,
it's just like if you had run this:

```ruby
def greet(name)
  puts "Hello, #{name}!"
end

greet("Michelle")
```

## Where does require look for files?

Sometimes you'll see something like this:

```ruby
# File: spec/docking_station_spec.rb

require 'docking_station' # There's no "./"!

RSpec.describe DockingStation do
  # ...
end
```

But Ruby somehow locates `lib/docking_station.rb` even though it's in a
completely different place! How does Ruby know?

When you run `require`, it will follow some rules:

1. **Does the path start with `/`? If so, let's look there.**  
   For example, if the path is `/Users/kay/Code/filename.rb`, we're going to
   start at the root of the filesystem `/` and find that path.

2. **Does the path start with `./` or `../`? If so, let's start at our current
   directory and look there.**  
   For example, if it's `./filename.rb` let's look right in this directory. If
   it's `../src/file.rb` let's go one directory up, then into the `src`
   directory and look for `file.rb`.

   The current directory is the directory the file is run from, _not
   necessarily_ the directory of the file you're editing. If you're not sure,
   try running `pwd` in the shell just before you run `ruby main.rb`.

3. **Otherwise, let's look in `$LOAD_PATH`.**  
   `$LOAD_PATH` is a special Ruby variable that contains a list of directories
   for Ruby to look for files in. Libraries and frameworks often amend
   `$LOAD_PATH` to make your life easier. You can also change it if you want.

When you run `rspec`, the `rspec` gem changes `$LOAD_PATH` to include the `lib`
file in your project.

That means if you put Ruby files in `lib` you can require them with `require`
without using the `./` at the front.

## How does `require` know where my Gems are?

Sometimes you'll see something like this

```ruby
require 'twilio'
```

But there's no file `twilio.rb` anywhere. How does it know!

When you're using `bundler`, a library called `rubygems` hooks into `require` so
that it can find the gems you've installed.

## How do I require files relative to the current file?

Let's say you have a project like this:

```
.
├── lib
│   ├── cart.rb
│   └── items
│       └── big.rb
└── main.rb
```

You want to `main.rb` to require `lib/cart.rb` which then requires
`lib/items/big.rb`.

Let's try it:

```ruby
# File: main.rb

require './lib/cart'

# ...
```

```ruby
# File: lib/cart.rb

require './items/big'

# ...
```

But you get an error!

```
; ruby main.rb
...in `require': cannot load such file -- ./items/big (LoadError)
```

This is because the `./` refers to the current directory in the terminal, called
the 'working directory' — _not_ the current file. To simulate this, use `file`:

```
; file ./lib/cart.rb
./lib/cart.rb: Ruby script text, ASCII text
; file ./items/big.rb
./items/big.rb: cannot open `./items/big.rb' (No such file or directory)
```

We could change our require to use `./lib/items/big`, but that feels sort of
strange. Why should `cart.rb` need to know about `lib`? What if we change the
name of `lib` or move `cart` and `items/` to another directory? We'd have to
change all our files!

To avoid this problem we could use `require_relative`. This method requires
files relative to the current file.

```ruby
# File: cart.rb

require_relative 'items/big'

# ...
```

## Should I use the `.rb` extension when requiring?

No. You can include it, but it's recommended that you don't.

This is because sometimes the files might not end with `.rb`, they might be
pre-built binary libraries ending with `.o`. You might not always know what the
filename is going to be on different platforms (e.g. Mac or Windows) so for
portability we always leave the extension off.

## What happens if I `require` the same file twice?

Nothing! Ruby notices you tried to do this and ignores your request.

If you want to force it to load the file twice, you can use `load` instead.

## What's the best way to require files?

A typical Ruby project would set up `$LOAD_PATH` to contain its main code
directory (e.g. `lib/`) and then require all files relative to that path using
`require`.

For example, in this structure:

```
.
├── lib
│   ├── cart.rb
│   └── items
│       └── big.rb
└── main.rb
```

We would set up `$LOAD_PATH` in `main.rb` like so:

```ruby
# File: main.rb

$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
# This line looks a bit obscure. Here it is broken down:
# 1. Get the path to the current file
#    __FILE__                       e.g. "/Users/kay/Code/tmp/rcheck/main.rb
# 2. Take the filename off the end
#    File.dirname(...)              e.g. "/Users/kay/Code/tmp/rcheck"
# 3. Add 'lib' to the end
#    File.join(..., 'lib')          e.g. "/Users/kay/Code/tmp/rcheck/lib"
# 4. Add that to the load paths
#    $LOAD_PATH << ...

require 'cart'

# ...
```

```ruby
# File: lib/cart.rb

require 'items/big'

# ...
```

This approach is favoured in Ruby because Ruby programmers like to arrange all
their files in consistent, predictable directory structures. In a Ruby project,
it's a pretty good guess that `Items::Big` will always be located in
`lib/items/big.rb`.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/require.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/require.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/require.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/require.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/require.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
