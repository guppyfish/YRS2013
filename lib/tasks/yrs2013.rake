require 'csv' 

namespace :yrs2013 do
	desc "Imports all the questions!"
	task :import_questions => :environment do
		question = Question.find_or_create_by(title: 'What would you say are the most important issues facing Britain today when it comes to crime?')
		CSV.foreach("Crime.csv") do |row|
			question.results.find_or_create_by_title!(title: row[0], sixteen_24_result: row[1])

		end	
	end
end