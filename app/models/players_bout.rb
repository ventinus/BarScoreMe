# == Schema Information
#
# Table name: players_bouts
#
#  id         :integer          not null, primary key
#  players_id :integer
#  bouts_id   :integer
#

class PlayersBout < ApplicationRecord
  belongs_to :player
  belongs_to :bout
end
