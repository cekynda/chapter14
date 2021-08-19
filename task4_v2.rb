# frozen_string_literal: true

require 'pry'
class Foo
  def initialize(my_hsh)
    @my_hsh = my_hsh
  end

  @my_hsh.each do |k, v|
    define_method k do
      v
    end
  end
end
hui = {
  in_cold_water: 21,
  in_hot_water: 25,
  in_Ura: 15
}
hui = 2
my_hui = Foo.new(Hash[:in_Ura, 15, :in_hot_water, 25, :in_cold_water, 21])
my_hui.qwe
my_hui.in_Ura
