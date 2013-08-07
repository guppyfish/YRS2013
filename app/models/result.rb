class Result < ActiveRecord::Base
	validates_presence_of :title,  :sixteen_24_result, :question 
	belongs_to :question   
end

