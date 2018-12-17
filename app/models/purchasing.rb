class Purchasing < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  belongs_to :theater
  validates :name_on_card, :exp_year, :exp_month, :street, :city, :state, :num_of_tickets, :movie_id, :theater_id, :user_id, presence: true
  validates :card_num, presence: true, length: { is: 16 }
  validates :zipcode, presence: true, length: { is: 5 }
  validates :security_code, presence: true, length: { is: 3 }
end
