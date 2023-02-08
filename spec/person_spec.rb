require_relative ‘../person’
require_relative ‘../book’

describe Person do
  context ‘When testing the Person class’ do
    age = 15
    name = ‘jane’
    parent_permission = true
    person = Person.new(age, name, parent_permission: parent_permission)
    person_two = Person.new(20, name, parent_permission: false)

    it ‘Validate the age of the person’ do
      expect(person.age).to eq age
    end

    it ‘Validate the name of the person’ do
      expect(person.name).to eq name
    end

    it ‘Validate capitalized name and trim to 10 length’ do
      correct_person = person.correct_name.capitalize
      expect(correct_person).to eql ‘Jane’
    end

    it ‘Validate the rental of the person’ do
      person.add_rental(person)
      expect(person.rentals.length).to eq 1
    end

    it ‘Return true if he can use service’ do
      expect(person.can_use_services?).to be true
    end

    it ‘Return false if person cannot use service’ do
      expect(person_two.can_use_services?).to be true
    end
  end
end