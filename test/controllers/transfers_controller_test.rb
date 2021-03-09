require 'test_helper'

class TransfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school = School.create(name: "Test school", location: "Test address", description: "Test description")
    @curriculum = Curriculum.create(title: "Curriculum test", description: "Curriculum description", capacity: 5)
    @school.teachers << @teacher = teachers(:one)
    @school.cohorts << @cohort = Cohort.create(name: "Cohort test", school_id: @school.id, teacher_id: @teacher.id, curriculum_id: @curriculum.id)
    @school.students << @student = students(:one)
    #binding.pry
    @transfer = Transfer.create!(cohort_id: @cohort.id,student_id: @student.id, school_id: @school.id, start_date: Date.today, end_date: Date.today + 90)
  end
  
  test "should get new" do
    get new_transfer_path(@transfer.id)
    assert_response :success
  end

  test "should get create" do
    assert_difference('Transfer.count') do
      post transfers_path, params: { transfer: { cohort_id: @cohort.id,student_id: @student.id, school_id: @school.id, start_date: Date.today, end_date: Date.today + 90}}
      end

    assert_redirected_to school_enrollment_path(@school, Enrollment.last)
  end

  test "should get show" do
    get transfer_path(@transfer)
    assert_response :success
  end

end
