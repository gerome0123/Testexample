class Subject < ApplicationRecord
  has_many :subject_teachers, dependent: :destroy
  has_many :teachers, :through => :subject_teachers
  has_many :book_subjects, dependent: :destroy
  has_many :books, :through => :book_subjects
  has_many :student_subjects, dependent: :destroy
  has_many :students, :through => :student_subjects

end
