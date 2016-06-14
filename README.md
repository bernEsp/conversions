### conversions module
#### Conversion to the class

This module exposes a ruby accessor to convert and object to other.

For instances ruby have its own:

* Array([1,2,3])
* Integer('12')
* URI('http://example.com')

Conversions modules defines:

```ruby
require 'conversions'
class A
  include conversions
  Roman(1)
end
```

This Roman method is shorter than calling Roman.new 
This method prevents monkey-patching your objecs or classes

### Early adopters  (kind of monkey patching)
Can use the public conversion protocol 

include Conversions module into the class
and you will have access to Roman conversion

```ruby
require 'conversions'
class A
  include conversions
  ...
end

a = A.new
a.to_roman # => I

```


### Roman

Roman numerals are limited to 1000 and zero is represent an empty
string
