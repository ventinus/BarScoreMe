# == Schema Information
#
# Table name: games
#
#  id   :integer          not null, primary key
#  name :string           not null
#

class Game < ApplicationRecord
  has_many :bouts, through: :bouts_games
end
