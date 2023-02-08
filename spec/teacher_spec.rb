require_relative '../teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    age = '30'
    name = 'Rose'
    specialization = 'Math'
    teacher = Teacher.new(age, name, specialization)

    it 'Validate the age of the teacher' do
      expect(teacher.age).to eq age
    end

    it 'Validate the name of the teacher' do
      expect(teacher.name).to eq name
    end
  end

  context 'For the can_use_services? method.' do
    it 'Can use services?' do
      teacher = Teacher.new(26, 'Rose', 'Math') 
      expect(teacher.can_use_services?).to eql true
    end
  end
end