class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name, unique: true
      t.boolean :premium
      t.boolean :seller_favorite
      t.boolean :registered
      t.date :registered_on
      t.date :unregistered_on
      t.integer :profile_pageviews
      t.integer :overall_rating
      t.integer :review_count
      t.integer :recommendation_count
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
