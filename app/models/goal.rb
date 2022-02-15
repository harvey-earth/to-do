class Goal < ApplicationRecord
  belongs_to :user
  has_many :steps
  enum status: { none: 0, working: 1, complete: 2, deleted: 3 }
end
