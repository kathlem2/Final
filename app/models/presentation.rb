class Presentation < ApplicationRecord
  validates :topic, presence: true
  belongs_to :group
end
