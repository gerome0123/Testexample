class Book < ApplicationRecord
  has_many :book_subjects, dependent: :destroy
  has_many :subjects, :through => :book_subjects
end
