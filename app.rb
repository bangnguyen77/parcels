
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
  @parcels = Parcels.new(height, width, depth, weight)
  erb(:parcels)
end
