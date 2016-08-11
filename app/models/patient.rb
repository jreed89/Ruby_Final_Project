class Patient < ApplicationRecord
  has_many :charts, dependent: :destroy
  has_and_belongs_to_many :doctors, inverse_of: :patients
  before_destroy { doctors.clear }
end
