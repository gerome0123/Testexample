class Teacher < ApplicationRecord
  has_many :subject_teachers, dependent: :destroy
  has_many :subjects, :through => :subject_teachers
  has_attached_file :avatar, :default_url => ActionController::Base.helpers.asset_path('assetsmissing.png')
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
