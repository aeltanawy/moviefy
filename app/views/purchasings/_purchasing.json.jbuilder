json.extract! purchasing, :id, :num_of_tickets, :movie_id, :theater_id, :user_id, :name_on_card, :card_num, :exp_month, :exp_year, :security_code, :street, :city, :state, :zipcode, :total, :created_at, :updated_at
json.url purchasing_url(purchasing, format: :json)
