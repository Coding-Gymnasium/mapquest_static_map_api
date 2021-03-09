class Transfer < ApplicationRecord
  belongs_to :student
  belongs_to :school
  belongs_to :cohort

  validates :student_id, :school_id, :cohort_id, :start_date, :end_date, presence: true
  validates :student, uniqueness: { scope: :cohort_id }
end
