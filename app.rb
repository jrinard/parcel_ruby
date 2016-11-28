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
  @volumn = Triangle.new(@height, @width, @length).volume()
  erb(:index)
end
