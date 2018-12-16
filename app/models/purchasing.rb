class Purchasing < ApplicationRecord
  belongs_to :movie
  belongs_to :theater
  belongs_to :user
  belongs_to :credit_card
end
