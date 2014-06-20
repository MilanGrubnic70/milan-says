get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  #Create and return a JSON object with the random cell and color given below.

  cell= rand(1..12)
  # color= "#" + "%06x" % (rand * 0xffffff)
  icon = rand(1..17)

  {cell: cell, icon: icon}.to_json
end

#########
# get '/' do
#   # Look in app/views/index.erb
#   erb :index
# end

# post '/color' do

#   #Create and return a JSON object with the random cell and color given below.

#   cell= rand(1..9)
#   color= "#" + "%06x" % (rand * 0xffffff)
#   content_type :json
#   {:cell => cell, :color => color}.to_json

# end