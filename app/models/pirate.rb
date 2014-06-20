class Pirate < ActiveRecord::Base
  def self.search(query)
      where("name like :q", q: "%#{query}%") 
    end
end
