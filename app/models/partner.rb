class Partner < ActiveRecord::Base

	belongs_to :user
	belongs_to :goal

	validates :goal_id, presence: true

	def full_name
  	"#{first_name} #{last_name}"
  end

end
