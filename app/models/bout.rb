# == Schema Information
#
# Table name: bouts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bout < ApplicationRecord
  has_many :bouts_games
  has_many :games, through: :bouts_games
end
