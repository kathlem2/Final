class Feedback < ApplicationRecord
  belongs_to :presentation
  belongs_to :user
  validates :presentation_id, presence: true
  validates :ranking, presence: true, :inclusion => 1..10
  validates :comment, presence: true
  # Ensures that the pair of user id and presentation id for a given feedback are unique
  # this makes it so that each user can only submit one feedback form for a given presentation.
  validates_uniqueness_of :user_id, :scope => [:presentation_id] 
end
