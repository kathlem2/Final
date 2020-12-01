class User < ApplicationRecord
  validates :email, format: { with: /[[:alnum:]+_.-]+@[[:alnum:].-]/ }, presence: true
  validates_uniqueness_of :email
  validates :name, presence: true
  validates :password, format: { with: /[[:alnum:]!@#$%^&*()]{8,26}/ }, presence: true
end
