# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  username   :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord
  validates_uniqueness_of :username

  has_many :players_bouts
  has_many :bouts, through: :players_bouts
end
