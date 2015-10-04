require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = []
  state = {id: 'NJ', name: 'New Jersey'}
  @states << state
  state = {id: 'MI', name: 'Michigan'}
  @states << state
  state = {id: 'NV', name: 'Nevada'}
  @states << state
  state = {id: 'NH', name: 'New Hampshire'}
  @states << state
  state = {id: 'WA', name: 'Washington'}
  @states << state
  
  @states.sort_by! { | state | state[:name] } 
  
  erb :states, layout: :main
end
