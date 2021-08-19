# frozen_string_literal: true

class Hello
  attr_accessor :word

  def initialize(word)
    @word = word
  end
  
  def to_s
    "Hello, #{word}!"
  end

  def say
    puts "Hello, #{word}!"
  end
end

hello = Hello.new('wolrd')
hello.say
puts hello
