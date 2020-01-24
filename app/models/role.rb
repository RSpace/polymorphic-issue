class Role < ApplicationRecord
  belongs_to :user
  belongs_to :access_to, polymorphic: true
end
