class Feedback < ApplicationRecord
  belongs_to :presentation
  belongs_to :user
  validates :presentation_id, presence: true
  validates :ranking, presence: true, :inclusion => 1..10
  validates :comment, presence: true
  validates_uniqueness_of :user_id, :scope => [:presentation_id] 
end
