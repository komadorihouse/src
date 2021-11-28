class Merchandise < ApplicationRecord
    with_options presence: true do
        validates :merchandise_name
        validates :price
    end
    belongs_to :user
end
