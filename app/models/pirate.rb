class Pirate < ActiveRecord::Base
  def self.search(query)
    if query.present?
      # where("name like :q", q: "%#{query}%") 
      # where("name ilike :q or description ilike :q or ship ilike :q", q: "%#{query}%")
      # where("name @@ :q or description @@ :q or ship @@ :q", q: query)
      rank = <<-RANK
        ts_rank(to_tsvector(name), plainto_tsquery(#{sanitize(query)})) +
        ts_rank(to_tsvector(ship), plainto_tsquery(#{sanitize(query)})) +
        ts_rank(to_tsvector(description), plainto_tsquery(#{sanitize(query)}))
      RANK
      where("name @@ :q or description @@ :q", q: query).order("#{rank} desc")
    else
      all
    end
end
