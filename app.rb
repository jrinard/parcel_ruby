require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/result') do
  @height = params.fetch('height').to_i()
  @width = params.fetch('width').to_i()
  @length = params.fetch('length').to_i()
  @weight = params.fetch('weight').to_i()
  @cost_to_ship = Parcel.new(@height, @width, @length, @weight).cost_to_ship()
  erb(:index)
end
