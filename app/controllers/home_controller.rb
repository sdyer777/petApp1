class HomeController < ApplicationController
  
  # GET /
  # Returns all pets
  def index
    url = 'https://petapi-1.herokuapp.com/'
    @response = RestClient.get(url)
    @parsed = JSON.parse(@response)
    @message = "Hello, how are you today?"
  end

  # GET /widgets/1
  # Returns pet with specified ID
  def show
    url = 'https://petapi-1.herokuapp.com/pets/'
    @response = RestClient.get(url)
  end

end
