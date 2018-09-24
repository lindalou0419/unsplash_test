class Image < ApplicationRecord
  has_many :entries

  def self.unsplash_response(keyword)
    response = HTTParty.get("https://api.unsplash.com/search/photos?client_id=#{ENV["UNSPLASH_KEY"]}&query=#{keyword}")
    return JSON.parse(response.body)
  end
end
