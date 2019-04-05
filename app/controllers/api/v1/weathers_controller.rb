class Api::V1::WeathersController < ApplicationController

  def index
    url = "https://samples.openweathermap.org/data/2.5/weather?lat=#{params['lat']}&lon=#{params['lng']}&appid=2096445a353b6d2af071656f435b9687"
    weather_response = RestClient.get(url)
    render json: JSON.parse(weather_response)
  end
end
