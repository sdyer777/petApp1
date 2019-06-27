class DetailsController < ApplicationController
  def index
     # get pet info
    url = 'https://petapi-1.herokuapp.com/' + params[:id]
    @response = RestClient.get(url)
    @pets = JSON.parse(@response)
    @pet = @pets[0]

    # GET /
  # Get the weather
    url = 'https://api.darksky.net/forecast/3be3bbf389ba38c8d1107cf491700c8e/' + @pet['latitude'] + ',' + @pet['longitude']
    @id = params[:id]
    @weatherResponse = RestClient.get(url)
    @weatherData = JSON.parse(@weatherResponse)

    @precipProbability = (@weatherData['daily']['data'][0]['precipProbability'] * 100).round

    # Set yes/no needs umbrella.
    @needsUmbrella = 'No'
    if @precipProbability >= 50
      @needsUmbrella = 'Yes'
    end

    #set message based on chance of precipitation
    @needsMessage = "does not need an umbrella today."
    if @precipProbability > 80
      @needsMessage = "must have an umbrella today."
    elsif @precipProbability > 60
      @needsMessage = "is probably going to need an umbrella."
    elsif @precipProbability > 40
      @needsMessage = "better take an umbrella just to be safe."
    elsif @precipProbability > 10
      @needsMessage = "can probably chance it without an umbrella today."
    end

    #set descriptor of chance of precipitation
    @chanceOfPrecip = 'low'
    if @precipProbability > 70
      @chanceOfPrecip = 'high'
    elsif @precipProbability > 40
      @chanceOfPrecip = 'moderate'
    end
      
  end
end
