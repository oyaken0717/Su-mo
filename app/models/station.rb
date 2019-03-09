class Station < ApplicationRecord
  belongs_to :apart, optional: true
end
