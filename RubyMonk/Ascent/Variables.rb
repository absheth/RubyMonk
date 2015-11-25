puts  "START-------------------------------START"
puts

class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity  = quantity
  end

  def show
    puts "Item Name ==> #{@item_name}"
    puts "Quantity ==> #{@quantity}"
  end

  def item_name
    @item_name
  end

end
Item1 = Item.new("OnePlus_One", 2)
puts "Item.new(\"OnePlus_One\", 2).show ==> #{Item1.show}"
puts "Item1.item_name ==> #{Item1.item_name}"
puts
Item2 = Item.new("OnePlus_Two", 3)
puts "Item.new(\"OnePlus_Two\", 3).show ==> #{Item2.show}"
puts "Item2.item_name ==> #{Item2.item_name}"
puts "~~~~~~~~~~"
puts

puts "Example of `attr_reader`."
puts

class Item
  attr_reader :item_name
  def initialize(item_name)
    @item_name = item_name
  end
end

Item3 = Item.new("OnePlus")
puts "Item3.item_name ==> #{Item3.item_name}"
puts "~~~~~~~~~~"
puts

class AB

  def initialize(name, age)
    @name = name
    @age = age
  end

  def show
    "Instance Method `show` invoked :: #{self}"
  end

  def to_s
    "My name is #{@name} and my age is #{@age}"
  end
end

puts AB.new("Akash Sheth", 23).show
puts "~~~~~~~~~~"
puts
class AS
  def self.show
    puts "This class method (static in java)."
  end
end

puts "AS.show"
AS.show
puts "~~~~~~~~~~"
puts

class ABS

  class << self
    def show
      puts "This is another way of invoking `class` method (static in java)."

    end
  end
end
puts "ABS.show"
ABS.show
puts "~~~~~~~~~~"
puts
class ABSheth
  @@no_of_instance = 0

  def initialize(name)
    @name = name
    @@no_of_instance +=1
  end

  def self.showCount
    puts "Count of instance ==> #{@@no_of_instance}"
  end
end

ABSheth.new("Akash Sheth")
ABSheth.new("Akash")

ABSheth.showCount
puts "~~~~~~~~~~"
puts
class ApplicationConfiguration
  @@configuration = {}

  def self.set(property, value)
    @@configuration[property] = value
    puts "Value"
  end

  def self.get(property)
    @@configuration[property]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
end

class WebApplicationConfiguratiob < ApplicationConfiguration
end

ERPApplicationConfiguration.set("name","ERP Application")
WebApplicationConfiguratiob.set("name","Web Application")
puts "ERPApplicationConfiguration.set(\"name\",\"ERP Application\")
WebApplicationConfiguratiob.set(\"name\",\"Web Application\")"
p "ERPApplicationConfiguration.get(\"name\") ==> #{ERPApplicationConfiguration.get("name")}"
p "WebApplicationConfiguratiob.get(\"name\") ==> #{WebApplicationConfiguratiob.get("name")}"
p "ApplicationConfiguration.get(\"name\") ==> #{ApplicationConfiguration.get("name")}"

puts "~~~~~~~~~~"
puts
class Foo
  @foo_count = 0

  def self.increment_count
    @foo_count += 1
  end

  def self.current_count
    @foo_count
  end
end

class Bar < Foo
  @foo_count = 13
end

Foo.increment_count
Bar.increment_count

puts "Foo.increment_count
Bar.increment_count"
p "Foo.current_count ==> #{Foo.current_count}"
p "Bar.current_count ==> #{Bar.current_count}"
puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts
puts  "END-------------------------------END"
puts
