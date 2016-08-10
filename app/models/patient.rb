class Patient < ApplicationRecord
  has_many :charts, dependent: :destroy
end
