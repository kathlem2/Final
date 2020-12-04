class Presentation < ApplicationRecord
  belongs_to :group
  has_many :feedbacks
  validates :topic, presence:true
  validates :group_id, presence:true
  validate :group_id
end
