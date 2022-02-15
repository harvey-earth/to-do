class Goal < ApplicationRecord
  belongs_to :user
  has_many :steps
  enum status: [:none, :working, :complete, :deleted]
end
