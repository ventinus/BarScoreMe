# == Schema Information
#
# Table name: players
#
#  id                 :integer          not null, primary key
#  username           :string           default(""), not null
#  encrypted_password :string           default(""), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable
  before_validation :default_password

  protected

  def default_password
    if self.password.nil?
      self.password = 'password'
    end
  end

end
