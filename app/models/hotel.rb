class Hotel < ActiveRecord::Base

  def load_reviews
    data = API.new.call("companies/#{self.olery_id}/reviews", {
      'start_date' => '2014-06-01',
      'end_date'   => '2014-06-30'
    })
    data['data'].each do |review|
      review = Review.new(
        :source_name => review['source_name'],
        :hotel_id    => data['company_id'],
        :ratings     => review['ratings'].to_s,
        :reviewer    => review['reviewer'].to_s,
        :review_sentiment => review['review_sentiments'].to_s,
        :sentiment   => review['sentiment'],
        :review_id   => review['id'],
        :title       => review['title'],
        :review_date => review['review_date']
      )
      review.save
    end
  end
end
