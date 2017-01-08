# == Schema Information
#
# Table name: winners
#
#  id         :integer          not null, primary key
#  contest_id :integer
#  player_id  :integer
#

class Winner < ApplicationRecord
  belongs_to :contest
  belongs_to :player
end
