class HomeController < ApplicationController
  
  # GET /
  # Returns all pets
  def index
    url = 'https://petapi-1.herokuapp.com/'
    @response = RestClient.get(url)
    @parsed = JSON.parse(@response)
  end

end
