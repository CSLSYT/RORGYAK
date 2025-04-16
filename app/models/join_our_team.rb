class JobApplication < ApplicationRecord
  has_one_attached :resume
  validates :vnev, :knev, :email, :phone, :position, presence: true
end
