require_relative 'base_lister'
class PeopleLister < BaseLister
  def list_data(persons)
    persons.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end
end
