class Order < ApplicationRecord
    with_options presence: true do
        validates :user
        validates :merchandise
        validates :mumber_of_orders
        validates :price
    end
    belongs_to :user
    belongs_to :merchandise
end
