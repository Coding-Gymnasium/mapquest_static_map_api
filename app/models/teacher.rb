class Teacher < ApplicationRecord
  belongs_to :school
  has_many :cohorts, dependent: :destroy
  has_many :students, through: :enrollments

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_name_w_school
    "#{full_name} (#{school&.name})"
  end
end
