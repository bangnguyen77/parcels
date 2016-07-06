
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:index)
end

get('/parcels') do
  height = params.fetch('height').to_i
  width = params.fetch('width').to_i
  depth = params.fetch('depth').to_i
  weight = params.fetch('weight').to_i
  distance = params.fetch('distance').to_i
  @volume = @height * @width * @depth
  @parcels = Parcels.new(height, width, depth, weight)
  @cost = @parcels.cost_to_ship(distance)
  erb(:parcels)
end
