require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/map") do
  destination = params.fetch("destination")
  place = Places.new(destination)
  place.save()
  erb(:map)
end
