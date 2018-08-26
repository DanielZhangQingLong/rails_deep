module Vegertarian
  def eat_meat?
    false
  end
end

class Pony
  extend Vegertarian
  #include Vegertarian
end

puts Pony.eat_meat?
p = Pony.new
p.extend Vegertarian
puts p.eat_meat?
