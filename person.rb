require './decorator'

class Person < Nameable
  # accesor get and set method
  attr_accessor :name, :age
  # accesor get method
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end

  def add_rental(person)
    @rentals.push(person)
  end
end
