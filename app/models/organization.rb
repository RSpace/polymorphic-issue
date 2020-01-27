class Organization < ApplicationRecord
  self.table_name = 'organisations'

  has_many :roles, as: :access_to
  has_many :users, through: :roles

  def self.polymorphic_name
    "Organisation"
  end
end
