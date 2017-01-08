# == Schema Information
#
# Table name: scores
#
#  id         :integer          not null, primary key
#  contest_id :integer
#  player_id  :integer
#  value      :string           not null
#

class Score < ApplicationRecord
  belongs_to :contest
  belongs_to :player
end

