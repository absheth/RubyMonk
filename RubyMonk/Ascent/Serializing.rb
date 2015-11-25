puts  "START-------------------------------START"
puts "**SERIALIZING**"
puts


class CerealBox
  attr_reader :ounces, :contains_toy

  def initialize(ounces, contains_toy)
    @ounces = ounces
    @contains_toy = contains_toy
  end

  def self.from_s(s)
    ounces = 0
    contains_toy = false
    s.each_line do |x|
      line = x.split(":")[1].strip
      ounces = line.to_i if x.include?("ounces")
      contains_toy = to_boolean(line) if x.include?("contains_toy")
    end
  end

  def self.to_boolean(line)
    line == 'true'
  end

  def to_s
    "ounces: #{@ounces}\n contains_toy: #{@contains_toy}"
  end
end

puts "example to_s: #{CerealBox.new(4, true).to_s}"
puts "example from_s: #{CerealBox.from_s(CerealBox.new(10, false).to_s)}"
puts "~~~~~~~~~~"
puts

require 'yaml'

class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end

  # this is reminiscent of our old friend, CerealBox#from_s
  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end

  # and this is a much-simplified version of our CerealBox#to_s
  def serialize
    YAML::dump(self)
  end

  # now we're free to define #to_s however we like!
  # ...which is great, because #to_s is for programmers to read,
  # not computers or users
  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end

wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize
puts "wendigo = Ogre.new(47, 3)
yaml = wendigo.serialize"
puts "The yaml looks like this:"
p yaml
puts "It's just a boring old string: #{yaml.class}"
puts "...and it's easy to change back: #{Ogre.deserialize(yaml)}"
puts

shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object.\n#{ogres}"
puts
puts "~~~~~~~~~~"
puts
require 'yaml'

class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
	yaml = YAML::dump(characters)
  puts yaml
  game_file = File.new("saved.yaml","w")
  game_file.write(yaml)
end

def load_game
  game_file = File.new("saved.yaml","r")
  yaml = game_file.read
  puts yaml
  YAML::load(yaml)
end

save_game(Dragon.new(46, 3, "Red"))
puts "~~~~~~~~~~"
puts

puts "~~~~~~~~~~"
puts
puts  "END-------------------------------END"
