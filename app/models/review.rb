class Review < ActiveRecord::Base

  def get_comments
    data = API.new.call("companies/#{self.hotel_id}/reviews/#{self.review_id}/comments")

    data = data['data']['comments'].first
    comments = ReviewComment.new(
      :data => data['c'],
      :olery_id => self.hotel_id,
      :review_id => self.review_id
    )
    comments.save
  end
end
