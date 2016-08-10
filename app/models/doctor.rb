class Doctor < ApplicationRecord
  has_and_belongs_to_many :patients, inverse_of: :doctors
end
