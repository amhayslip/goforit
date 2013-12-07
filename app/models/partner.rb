class Partner < ActiveRecord::Base

	belongs_to :user
	belongs_to :goal

	validates :email_address, uniqueness: true

	def full_name
  	"#{first_name} #{last_name}"
  end

end
