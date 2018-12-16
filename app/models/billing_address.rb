class BillingAddress < ApplicationRecord
  has_and_belongs_to_many :credit_card
end
