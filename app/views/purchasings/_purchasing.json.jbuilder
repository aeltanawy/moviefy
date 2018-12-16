json.extract! purchasing, :id, :num_of_tickets, :movie_id, :theater_id, :user_id, :credit_card_id, :created_at, :updated_at
json.url purchasing_url(purchasing, format: :json)
