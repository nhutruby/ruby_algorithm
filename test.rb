class Foo
  def initialize
    @a = 42
  end

  attr_accessor :a
end

Foo.new.a = "str"

p Foo.new.a #=> Integer | String
