# frozen_string_literal: true

require_relative 'task2'

class Group
  def initialize(*users)
    @users = users
  end

  def each(&block)
    @users.each(&block)
  end
end
vasya = User.new('Vasya', 'Petechkin', 'Huikovich')
petya = User.new('Petyu', 'Vasichkin', 'Huilovich')
huikin = User.new('Hui', 'Petechkin', 'Vasilevich')
grop = Group.new(vasya, petya, huikin)

grop.each { |i| print "#{i.name} #{i.surname} #{i.patronymic}\n" }
