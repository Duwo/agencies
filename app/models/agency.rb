class Agency < ApplicationRecord
  has_many :agents, foreign_key: :agencies_id
end
