class Group < ApplicationRecord
  validates :groupId, presence: true
  has_many :presentations
  has_many :users
end
