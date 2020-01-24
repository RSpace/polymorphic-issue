class Organization < ApplicationRecord
  has_many :roles, as: :access_to
  has_many :users, through: :roles, source: :access_to, source_type: "Organisation"
end
