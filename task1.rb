# frozen_string_literal: true

class Hello
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def say
    puts "Hello, #{word}!"
  end
end

hello = Hello.new('wolrd')
hello.say
puts hello # пока хз как сделать, нужно переопределять путс?
