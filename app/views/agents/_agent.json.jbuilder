json.extract! agent, :id, :name, :premium, :seller_favorite, :registered, :registered_on, :unregistered_on, :profile_pageviews, :overall_rating, :review_count, :recommendation_count, :image, :url, :created_at, :updated_at
json.url agent_url(agent, format: :json)
