require "application_system_test_case"

class EnrollmentsTest < ApplicationSystemTestCase
  setup do
    @enrollment = enrollments(:one)
  end

  test "visiting the index" do
    visit enrollments_url
    assert_selector "h1", text: "Enrollments"
  end

  test "creating a Enrollment" do
    visit enrollments_url
    click_on "New Enrollment"

    fill_in "Cohort", with: @enrollment.cohort_id
    fill_in "End date", with: @enrollment.end_date
    fill_in "School", with: @enrollment.school_id
    fill_in "Start date", with: @enrollment.start_date
    fill_in "Student", with: @enrollment.student_id
    click_on "Create Enrollment"

    assert_text "Enrollment was successfully created"
    click_on "Back"
  end

  test "updating a Enrollment" do
    visit enrollments_url
    click_on "Edit", match: :first

    fill_in "Cohort", with: @enrollment.cohort_id
    fill_in "End date", with: @enrollment.end_date
    fill_in "School", with: @enrollment.school_id
    fill_in "Start date", with: @enrollment.start_date
    fill_in "Student", with: @enrollment.student_id
    click_on "Update Enrollment"

    assert_text "Enrollment was successfully updated"
    click_on "Back"
  end

  test "destroying a Enrollment" do
    visit enrollments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enrollment was successfully destroyed"
  end
end
