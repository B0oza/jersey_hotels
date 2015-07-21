json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :description, :location, :stars, :website_url, :booking_url, :facilites, :img_url
  json.url hotel_url(hotel, format: :json)
end
