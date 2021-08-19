# frozen_string_literal: true

require 'pry'
class Foo
  def initialize(hash)
    @hash = hash
  end

  def method_missing(name)
    if @hash.key?(name)
      puts @hash[name]
    else
      puts 'такого ключа нет'
    end
  end
end
hui = {
  in_cold_water: 21,
  in_hot_water: 25,
  in_cold_Ura: 15
}
foo = Foo.new(hui)
foo.huilo
foo.in_cold_water
foo.in_cold_Ura
foo.in_Senpai
