class Pirate < ActiveRecord::Base
  def self.search(query)
    if query.present?
      where("name like :q", q: "%#{query}%") 
    else
      all
    end
  end
end
