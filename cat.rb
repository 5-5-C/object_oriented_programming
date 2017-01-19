class Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end


  def eats_at
    case
    when @meal_time == 0
      return "12 AM"
    when @meal_time > 0 && @meal_time < 12
      return "#{@meal_time} AM"
    when @meal_time == 12
      return "12 PM"
    when @meal_time > 12
      return "#{@meal_time - 12} PM"
    end
  end


def meow
  puts "My name is #{@name} and I eat #{@preferred_food} at #{@eats_at}."
end
end



jim = Cat.new('jim', 'turkey', 7)
coolcat = Cat.new('coolcat', 'ham', 18)
