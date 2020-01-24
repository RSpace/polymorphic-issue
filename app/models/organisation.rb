class Organisation < ApplicationRecord
  has_many :roles, as: :access_to
  has_many :users, through: :roles
end
