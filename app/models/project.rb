class Project < ActiveRecord::Base

	def self.top_projects
		Project.where('budget > 2000000')
	end

end
