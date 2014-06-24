class Pirate < ActiveRecord::Base
  def self.search(query)
    if query.present?
      # where("name like :q", q: "%#{query}%") 
      # where("name ilike :q or description ilike :q or ship ilike :q", q: "%#{query}%")
      where("name @@ :q or description @@ :q or ship @@ :q", q: query)
    else
      all
    end
  end
end
