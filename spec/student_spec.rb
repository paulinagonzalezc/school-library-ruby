require_relative '../student'

describe Student do
  context 'When testing the Student class' do
    age = '20'
    name = 'Paulina'
    parent_permission = true
    student = Student.new(age, name, parent_permission)

    it 'Check instance of student' do
      expect(student).to be_instance_of Student
    end

    it 'Validate the age of the student' do
      expect(student.age).to eq age
    end

    it 'Validate the name of the student' do
      expect(student.name).to eq name
    end

    it 'should validate the play_hooky for student' do
      expect(student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end
