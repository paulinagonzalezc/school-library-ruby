require_relative 'classroom'
require_relative 'student'

describe Classroom do
  context ‘When testing the Classroom class’ do
    label = ‘Math’
    student = Student.new(20, ‘John’, parent_permission: true)
    classroom = Classroom.new(label)
    classroom.add_student(student)

    it ‘Validate the label of the classroom’ do
      expect(classroom.label).to eq label
    end

    it ‘Validate the student of the classroom’ do
      expect(classroom.students[0]).to eq student
    end
  end
end
