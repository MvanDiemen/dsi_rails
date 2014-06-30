class DogSatisfactionIndex
  attr_accessor :hotel, :reviews, :ratings

  def initialize(hotel_id)
    @hotel = set_hotel(hotel_id)
  end

  def set_hotel(hotel_id)
    data = api.call("companies/#{hotel_id}").body

    hotel = {'id' => '...', 'name' => '...'}
  end

  def reviews(review_id)
    review = {'id' => '...', 'name' => '...', 'comments' => get_comments(review_id)}
  end

  def get_comments(review_id)
    return api.call("companies/#{hotel.id}/reviews/#{review_id}/comments")
  end
end
