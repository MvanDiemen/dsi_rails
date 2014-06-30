class API
  attr_accessor :http, :auth_token, :base_url

  def initialize
    @http = HTTPClient.new
    @base_url = 'https://agora.olery.com/v1/'
    @auth_token = 'ahguSahS7aengohngabutiuSuFeeSh7a'
  end

  def call(url, query = {})
    query['auth_token'] = auth_token
    response = http.get(base_url + url, :query => query)

    return JSON.load(response.body)
  end

  def get_comments(url, id)
    response = http.get(base_url + url, :query => {'id' => id})

    return JSON.load(response.body)
  end
end
#url = 'https://agora.olery.com:443/v1/companies/80/reviews?start_date=2010-01-01&end_date=2014-06-30&auth_token=ahguSahS7aengohngabutiuSuFeeSh7a'
