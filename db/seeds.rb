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

PlayersBout.create([
  { player_id: 1, bout_id: 1 },
  { player_id: 2, bout_id: 1 }
])

Contest.create([
  { bout_id: 1, game_id: 1 },
  { bout_id: 1, game_id: 1 }
])

Score.create([
  { contest_id: 1, player_id: 1, value: 11 },
  { contest_id: 2, player_id: 2, value: 8 }
])

Winner.create([
  { contest_id: 0, player_id: 0 },
  { contest_id: 2, player_id: 2 }
])
