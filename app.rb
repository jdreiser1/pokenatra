require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'
require_relative 'models/team'

get '/' do
  erb :"index"
end

get '/teams' do
  @teams = Team.all
  erb :"teams/index"
end

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get "/trainers/:id/edit" do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/edit"
end

get "/trainers/:id/pokemons" do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/pokedex"
end


delete '/trainers/:id/pokemons' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.trainer = null
  redirect("/trainers/:id/pokemons")
end


# get '/songs/:id' do
#   @song = Song.find(params[:id])
#   erb :"songs/show"
# end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/trainers/new' do
  erb :"trainers/new"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

post '/pokemons' do
  Pokemon.create(params[:pokemon])
  redirect '/pokemons'
end

post '/trainers' do
  Trainer.create(params[:trainer])
  redirect '/trainers'
end

get "/pokemons/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemons/edit")
end

get "/teams/:id/edit" do
  @team = Team.find(params[:id])
  erb(:"teams/edit")
end

put '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemons/#{@pokemon.id}")
end

delete '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect("/pokemons")
end

delete '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect("/trainers")
end
