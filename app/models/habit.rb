class Habit < ApplicationRecord
    # association
    belongs_to :user
    has_many :steps
end
