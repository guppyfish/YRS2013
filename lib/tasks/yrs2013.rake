require 'csv' 

namespace :yrs2013 do
	desc "Imports all the questions!"
	task :import_questions => :environment do
		question = Question.find_or_create_by(title: 'Crime - the most important issues facing Britain?')
		CSV.foreach("Crime.csv") do |row|
			question.results.find_or_create_by_title!(title: row[0], sixteen_24_result: row[1])
		end 
		
		question = Question.find_or_create_by(title: 'Immigration - are you confident the Home Office is dealing with it?')
		CSV.foreach("deal_with_immigration.csv") do |row|
			question.results.find_or_create_by_title!(title: row[0], sixteen_24_result: row[1])
		end	

		question = Question.find_or_create_by(title: 'David Cameron has pledged to fully legalise gay marriage. Do you think this is because...?')
		CSV.foreach("gay_marriage.csv") do |row|
			question.results.find_or_create_by_title!(title: row[0], sixteen_24_result: row[1])
		end	
	end
end