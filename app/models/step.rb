class Step < ApplicationRecord
    # association
    belongs_to :habit
    belongs_to :user
end
