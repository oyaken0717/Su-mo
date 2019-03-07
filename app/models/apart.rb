class Apart < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :rent
    validates :address
    validates :age
    validates :note
  end
end
