# Inheritance

One strategy is inheritance. [OOP](https://github.com/makersacademy/course/blob/main/boris_bikes.md) allows classes to "subclass" from each other, inheriting the common functionality. Consider this example.

```ruby
class Car
  def initialize(make)
      @make = make
  end
  
  def start
    puts "#{@make} starting..."
    check_brakes
    engine.start
  end
end

class ElectricCar < Car
  def engine
    ElectricEngine.new
  end
end
 
class InternalCombustionCar < Car
  def engine
    InternalCombustionEngine.new
  end
end
```

` ElectricCar.new("Tesla").start #=> Tesla starting... `

` InternalCombustionCar.new("Ford").start #=> Ford starting... `

Some of the methods and classes mentioned above (check_brakes, ElectricEngine, etc.) are not defined in the code. This code sample is incomplete but it does show that some methods (e.g. check_brakes) could be common to all subclasses of Car, while the implementation of some methods (e.g. engine) could differ. 

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/inheritance.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/inheritance.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/inheritance.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/inheritance.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=course&prefill_File=pills/inheritance.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
