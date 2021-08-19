# frozen_string_literal: true

class List
  attr_accessor :args

  def initialize(*args)
    @args = args
  end

  def each(&block)
    # for i in args
    #   yield(i)
    # end
    args.each(&block)
  end
end
list = List.new(1, 2, 3, 4, 5, 6, 7)
list.each { |i| puts i }
