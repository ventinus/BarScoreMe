# == Schema Information
#
# Table name: winners
#
#  id          :integer          not null, primary key
#  contests_id :integer
#  players_id  :integer
#

class Winner < ApplicationRecord
  belongs_to :contest
  belongs_to :player
end
