class Theater < ApplicationRecord

  def self.search(state=None, city=None, zipcode=None )
    if state || city|| zipcode
      where('state LIKE ? AND city LIKE ? AND zipcode LIKE ?', "%#{state}%", "%#{city}%", "%#{zipcode}%")
    else
      all
    end
  end

end
