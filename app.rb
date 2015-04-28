require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/travel")

get("/") do
  @destinations = Travel.all()
  erb(:index)
end

post("/results") do
  destination = params.fetch("destination")
  new_destination = Travel.new(destination)
  new_destination.save()
  erb(:results)
end
