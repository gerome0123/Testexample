class Student < ApplicationRecord
  has_many :student_subjects, dependent: :destroy
  has_many :subjects, through: :student_subjects
  has_many :teachers, through: :subjects
  has_many :books, through: :subjects
  has_attached_file :avatar, :default_url => ActionController::Base.helpers.asset_path('assetsmissing.png')
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
