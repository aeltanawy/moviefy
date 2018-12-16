json.extract! billing_address, :id, :street, :city, :state, :zipcode, :credit_card_id, :created_at, :updated_at
json.url billing_address_url(billing_address, format: :json)
