class Apart < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations
  with_options presence: true do
    validates :name
    validates :rent
    validates :address
    validates :age
    validates :note
  end

end
