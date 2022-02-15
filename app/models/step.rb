class Step < ApplicationRecord
  belongs_to :goal
  enum status: [:none, :working, :complete, :deleted]
end
