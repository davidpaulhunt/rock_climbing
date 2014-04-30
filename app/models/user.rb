class User < ActiveRecord::Base
	has_many :attempts
	has_many :routes, through: :attempts
	validates :name, presence: true

  accepts_nested_attributes_for :attempts, reject_if: lambda {|attributes| attributes['date_attempted(1i)'].blank?}, allow_destroy: true

  # scope :leaderboard, -> { order(total_score: desc) }
  # scope :routes, -> { Route.joins(:attempts).joins(:users).where()}
  
end
