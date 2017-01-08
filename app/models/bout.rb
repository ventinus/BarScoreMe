# == Schema Information
#
# Table name: bouts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bout < ApplicationRecord
  has_many :players_bouts
  has_many :players, through: :players_bouts

  has_many :contests

  def games
    binding.pry
  end
end
