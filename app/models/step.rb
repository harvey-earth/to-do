class Step < ApplicationRecord
  belongs_to :goal
  enum status: { incomplete: 0, working: 1, complete: 2, deleted: 3 }
end
