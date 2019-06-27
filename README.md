# README

Mentor Collective - Pet Weather

This application lists pets and allows the user to look up weather information for each pet's location, including advice on bringing an umbrella.

Features:
- pet list
- add a pet
- Check Weather link

This app uses the DarkSky public API to retrieve weather information.  The "Daily" forecast is used to determine the chance of precipitation.

This app is hosted in Heroku at:  https://petapp1mc.herokuapp.com

Tech:
- It is written in Ruby, with Rails used to create home and details controllers and views.
- Rbenv manages the ruby versions - this app uses Ruby 2.4.1.
- RestClient is used to call the back end to send/request data.

The back end is the Pet API, which services requests from this end to store and retrieve pet data.
