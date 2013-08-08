class Question < ActiveRecord::Base
	validates_presence_of :title
	has_many :results 

	def as_json(opts={})
		a = [['Options', 'Percentage']]
		results.each do |result|
			a << [result.title.strip, result.sixteen_24_result]
		end 
		return a 

	end
end


