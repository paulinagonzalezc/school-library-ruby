require_relative ‘../decorator’
require_relative ‘../person’

describe Decorator do
  context ‘Use the correct_name method’ do
    it ‘Return the name capitalized’ do
      person = Person.new(16, ‘max’)
      capitalized_person = CapitalizeDecorator.new(person)
      expect(capitalized_person.correct_name.capitalize).to eql ‘Max’
    end

    it ‘Return trimmed name’ do
      person = Person.new(20, ‘Maximilianus’)
      trimmed_person = TrimmerDecorator.new(person)
      expect(trimmed_person.correct_name).to eql(‘Maximilian’)
    end
  end
end