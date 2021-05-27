class Record < ApplicationRecord
  belongs_to :user
  validates :place,   presence: true
  validates :day,     presence: true
  validates :comment, presence: true
end
