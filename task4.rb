# frozen_string_literal: true

require 'pry'
class Foo
  def initialize(hash)
    @hash = hash
  end

  def method_missing(method)
    if @hash.key? method
      @hash[method] 
    else
      raise NoMethodError.new("Method #{method} doesn't exist.")
    end
  end
end
hui = {
  in_cold_water: 21,
  in_hot_water: 25,
  in_cold_Ura: 15
}
foo = Foo.new(hui)
puts foo.in_cold_water
puts foo.in_cold_Ura
puts foo.in_Senpai
puts foo.huilo
