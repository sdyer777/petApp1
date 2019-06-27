class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /
  # Returns all pets
  def index
    url = 'https://petapi-1.herokuapp.com/'
    @response = RestClient.get(url)
    @parsed = JSON.parse(@response)
  end

  # Helper function to test if string is a numeric value
  def is_number? string
    true if Float(string) rescue false
  end

  # Home/Save
  # save a new pet
  def save
    # post to API
    url = 'https://petapi-1.herokuapp.com/addPet'
    response = RestClient.post( url, { name: params[:name], type: params[:type], breed: params[:breed], location: params[:location], latitude: params[:latitude], longitude: params[:longitude] })

    # if we get an ok response, redirect to main list page
    if response.code <= 200
      # redirect to main page
      redirect_to '/'
    end
  end

end
