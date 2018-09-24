class Entry < ApplicationRecord
  belongs_to :image

  def self.sentiment_response(content)
    query = {"text" => "#{content}"}
    headers = {
      "X-Mashape-Key" => "#{ENV["SENTIMENT_KEY"]}",
      "Accept" => "application/json"
    }

    response = HTTParty.post(
      "https://twinword-sentiment-analysis.p.mashape.com/analyze/",
      :query => query,
      :headers => headers
    )

    mood = response["type"]
  end
end
