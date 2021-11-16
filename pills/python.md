# Python

Python is a generalist language, used for scripting, creating applications and data science. It looks a bit like ruby, but there are some major differences.

## Tips for your first python file

* There are two main version of Python. Python 2 is typically run using `python` and Python 3 is run using `python3`. All new projects should use Python 3, as Python 2 is now deprecated. Check you have it on your system or install it using brew. This also means you should always check the version when reading documentation or stack overflow answers. One of the differences is that printing is a keyword in python 2: `print "alice"` vs a function in python 3: `print("alice")`.

* Python is **very sensitive to whitespace**. Instead of `do end` or `{}`, python uses the level of indentation your code is written at to know which block it belongs to. Mixing tabs and spaces will create bugs. You may want to set up your IDE to show whitespaces. In VSCode you can use *View > Render Whitespace*.

* You can open a python REPL using `python3` without arguments. Leave the REPL using `exit()` or `quit()`.

* Here's a simple function definition in python:
```py
def add(a, b):
  return a + b
```

* You can add simple tests to your file using the keyword `assert`. For example:
```py
assert add(2, 3) == 5
assert add(0, 2) == 2
print("All tests passed")
```

* Python files use the extension `.py`. Run your file using `python3 <your_file>`.

## Resources

* [Syntax Cheat Sheet](https://www.pythoncheatsheet.org/). May be enough to start writing some code. It contains plenty of code examples.
* [Pytest Tutorial](https://semaphoreci.com/community/tutorials/testing-python-applications-with-pytest). This will get you started writing tests using pytest, one of the main Python coding frameworks.
* There are a few different ways to manage dependencies in python (think Gemfile). Here's [a blog post](https://boscacci.medium.com/why-and-how-to-make-a-requirements-txt-f329c685181e) about working with a requirement.txt and virtual environments.
* [Flask (Python's Sinatra)](https://flask.palletsprojects.com/en/2.0.x/)
* [Django (Python's Rails)](https://www.djangoproject.com/)
* [Python Coding Style Guide](https://www.python.org/dev/peps/pep-0008/): to help you decide on how to format your code. Also contains examples.

* [Official Python Tutorial](https://docs.python.org/3/tutorial/). This is the full reference course. Don't try to read is all, but cherry pick the parts that interest you.
* The Official documentation also contain a [reference of the language](https://docs.python.org/3/reference/index.html) and of the [standard library](https://docs.python.org/3/library/index.html). This is the ultimate reference. If you navigate to the docs from google, always check the python version at the top of the page. 


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/python.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/python.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/python.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/python.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=pills/python.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
