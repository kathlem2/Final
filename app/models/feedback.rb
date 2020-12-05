class Feedback < ApplicationRecord
  belongs_to :presentation
  validates :presentation_id, presence: true
  validates :ranking, presence: true, :inclusion => 1..10
  validates :comment, presence: true
end
