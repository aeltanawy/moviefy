json.extract! credit_card, :id, :name_on_card, :card_num, :exp_month, :exp_year, :security_code, :user_id, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
