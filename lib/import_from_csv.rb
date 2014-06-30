require 'csv'

def import_from_csv
  file = File.read('lib/hotels.csv')
  csv = CSV.parse(file, :headers => true)
  csv.each do |hotel|
    hotel = Hotel.new(:olery_id => hotel['Olery ID'],
              :name => hotel['hotel naam in 2012'],
              :stars => hotel['sterklasse NHC 2012'],
              :rooms => hotel['aantal kamers in 2012'],
              :beds => hotel['aantal bedden in 2012'],
              :city => hotel['plaats'],
              :zipcode => hotel['postcode'],
              :street => "#{hotel['straat']} #{hotel['huisnummer']}"
             )
    hotel.save
  end
end
