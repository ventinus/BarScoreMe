require 'active_support/core_ext/integer/inflections'

module BoutsHelper
  def shouldShowTotal bout
    bout.gameToContests.size > 1
  end

  def displayDate aDateTime
    ordDay = aDateTime.day.to_i.ordinalize
    month = aDateTime.strftime('%b')
    "#{month} #{ordDay} #{aDateTime.year}"
  end
end
