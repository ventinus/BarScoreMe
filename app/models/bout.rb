# == Schema Information
#
# Table name: bouts
#
#  id         :integer          not null, primary key
#  games_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bout < ApplicationRecord
end
