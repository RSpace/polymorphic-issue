class User < ApplicationRecord
  has_many :roles, autosave: true, foreign_key: "user_id"

  has_many(
    :organizations,
    through: :roles,
    source: :access_to,
    source_type: "Organisation"
  )
end
