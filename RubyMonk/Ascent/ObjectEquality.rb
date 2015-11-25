puts  "START-------------------------------START"
puts

puts "[1,2] == [1,2] ==> #{[1,2] == [1,2]}"
puts "[1,2] == [1,3] ==> #{[1,2] == [1,3]}"
puts "\"a\" == \"xyz\" ==> #{"a" == "xyz"}"
puts "~~~~~~~~~~"
puts

class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
end

puts "Item.new(\"abcd\",1)  == Item.new(\"abcd\",1) ==> #{Item.new("abcd",1)  == Item.new("abcd",1)}"

puts "~~~~~~~~~~"
puts

class Item1
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def to_s
    "Item(#{@item_name}, #{@quantity})"
  end

  def ==(other_item)
    puts "Method == called on #{self} with parameter #{other_item}"
    false
  end
end
puts "Item1.new(\"abcd\",1)  == Item1.new(\"abcd\",1) ==> #{Item1.new("abcd",1)  == Item1.new("abcd",1)}"
puts "~~~~~~~~~~"
puts

class Item2
  attr_reader :item_name, :quantity

  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def to_s
    "Item (#{@item_name}, #{@quantity})"
  end

  def ==(other_item)
    self.item_name == other_item.item_name && self.quantity == other_item.quantity
  end
end

items = [Item2.new("abcd", 1), Item2.new("abcd", 1), Item2.new("abcd", 1)]
puts "items = [Item2.new(\"abcd\", 1), Item2.new(\"abcd\", 1), Item2.new(\"abcd\", 1)]"

puts items.uniq

puts "~~~~~~~~~~"
puts
puts ""
puts "1.hash ==> #{1.hash}"
puts "\"Hello\".hash ==> #{"Hello".hash}"
puts "\"Hello!\".hash ==> #{"Hello!".hash}"
puts "[1,2,3].hash ==> #{[1,2,3].hash}"
puts "({:x => 1, :y => 2}.hash) ==> #{({:x => 1, :y => 2}.hash)}"

class Item3
  def initialize(name)
    @name = name
  end
end

puts "Item3.new(\"ruby\").hash ==> #{Item3.new("ruby").hash}"

puts "~~~~~~~~~~"
puts

class Item4
  attr_reader :item_name, :quantity
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def to_s
    "Item4(#{@item_name}, #{@quantity})"
  end

  def hash
    #puts "HASH INVOKED."
    puts "HASH ==> #{self.item_name} and #{self.quantity} "
    self.item_name.hash ^ self.quantity.hash
  end

  def eql?(other_item)
    puts "eql? Invoked."
    puts "Comparing #{@item_name} and #{other_item.item_name}"
    @item_name == other_item.item_name && @quantity == other_item.quantity
  end
end
#puts "Item4.new(\"abcd\", 1).hash ==> #{Item4.new("abcd", 1).hash}"

items1 = [Item4.new("abcd1", 1), Item4.new("abcd1", 1), Item4.new("abcd1", 1)]

puts items1.uniq
puts "~~~~~~~~~~"
puts
puts
class Item5

  attr_reader :item_name, :quantity, :supplier_name, :price
  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end

  def to_s
    "Item(#{@item_name},#{@quantity},#{@supplier_name},#{@price})"

  end
  def ==(other_item)
        self.item_name == other_item.item_name &&  self.quantity == other_item.quantity &&  self.supplier_name == other_item.supplier_name &&  self. price == other_item.price
  end

  def hash
    puts "HASH INVOKED."
    self.item_name.hash
  end

  def eql?(other_item)
    puts "eql? Invoked."
    puts "Comparing #{@item_name} and #{other_item.item_name}"
    @item_name == other_item.item_name && @quantity == other_item.quantity && @supplier_name == other_item.supplier_name && @price == other_item.price
  end

  # implement ==, eql? and hash
end


items5 = [Item5.new("abcd1", 1, "ab", 5), Item5.new("abcd2", 1, "ab", 5), Item5.new("abcd3", 1, "ab", 5)]

#puts items5.uniq
puts "~~~~~~~~~~"
puts

class Item6
  def inspect
    "This is `inspect` method."
  end
end

puts "Item6.new ==> #{Item6.new}"
puts "Item6.new.to_s ==> #{Item6.new.to_s}"
p  Item6.new
puts "~~~~~~~~~~"
puts

class Item7
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def to_s
    "#{@item_name} #{@quantity}"
  end
end
item7 = Item7.new("AB",13)
puts "item7 = Item7.new(\"AB\", 13)"
puts item7
p item7
puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts
puts  "END-------------------------------END"
