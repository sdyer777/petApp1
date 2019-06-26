class DetailsController < ApplicationController
  def index
     # get pet info
    url = 'https://petapi-1.herokuapp.com/' + params[:id]
    @response = RestClient.get(url)
    @pets = JSON.parse(@response)
    @pet = @pets[0]

    # GET /
  # Get the weather
    url = 'https://api.darksky.net/forecast/3be3bbf389ba38c8d1107cf491700c8e/42.2529,-71.0023'
    @id = params[:id]
    @weatherData = RestClient.get(url)

  end
end
