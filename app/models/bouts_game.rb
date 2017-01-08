# == Schema Information
#
# Table name: bouts_games
#
#  id       :integer          not null, primary key
#  bouts_id :integer
#  games_id :integer
#

class BoutsGame < ApplicationRecord
  belongs_to :bout
  belongs_to :game
end
