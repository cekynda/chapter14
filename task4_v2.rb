# frozen_string_literal: true

require 'pry'

class Foo
  def initialize(my_hsh = {})
    @my_hsh = my_hsh
    self.define_method_from_hash
  end

  def define_method_from_hash
    @my_hsh.each do |k, v|
      define_singleton_method k do
        v
      end
    end
  end
end
hui = {
  in_cold_water: 21,
  in_hot_water: 25,
  in_Ura: 15
}

my_hui = Foo.new(hui)
puts my_hui.in_cold_water
puts my_hui.in_Ura

