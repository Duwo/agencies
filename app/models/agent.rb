class Agent < ApplicationRecord
  belongs_to :agency, foreign_key: :agencies_id, optional: true
  scope :seller_favorite, -> { where(seller_favorite: true) }

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
