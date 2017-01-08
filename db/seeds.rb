# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create([
  { name: 'Shuffleboard' },
  { name: 'Pool' }
])

Player.create([
  { username: 'philyo' },
  { username: 'jonman' }
])

Bout.create([
  { created_at: DateTime.new(2017,1,1) }
])

BoutsGame.create([
  { bouts_id: 0, games_id: 0 }
])

PlayersBout.create([
  { players_id: 0, bouts_id: 0 },
  { players_id: 1, bouts_id: 0 }
])

Contest.create([
  { bouts_id: 0 },
  { bouts_id: 0 }
])

Score.create([
  { contests_id: 0, players_id: 0, value: 11 },
  { contests_id: 0, players_id: 1, value: 8 }
])

Winner.create([
  { contests_id: 0, players_id: 0 },
  { contests_id: 1, players_id: 1 }
])
