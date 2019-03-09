class Station < ApplicationRecord
  belongs_to :apart, optional: true
   with_options presence: true do
    validates :line
    validates :name
    validates :foot
  end
end
