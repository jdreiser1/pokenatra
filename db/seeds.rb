require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative '../models/team'

Pokemon.destroy_all
Trainer.destroy_all
Team.destroy_all

megaman = Team.create(name: "Megaman")
team_rocket = Team.create(name: "Team Rocket")

ash = Trainer.create(name: "Ash Ketchum", img_url: "https://upload.wikimedia.org/wikipedia/en/0/09/AshXYanime.png", team: megaman)
misty = Trainer.create(name: "Misty", img_url: "https://upload.wikimedia.org/wikipedia/en/b/b1/MistyEP.png", team: megaman)
brock = Trainer.create(name: "Brock", img_url: "https://upload.wikimedia.org/wikipedia/en/7/71/DP-Brock.png", team: team_rocket)

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer: ash)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer: misty)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer: ash)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer: misty)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer: brock)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer: brock)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer: brock)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer: ash)
