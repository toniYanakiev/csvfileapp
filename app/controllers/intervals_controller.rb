class IntervalsController < ApplicationController
	def interval
	
		file = params[:file]
		file_path = file.path
		interval_sum = 0

		rows = 0

		CSV.foreach(file_path) do |row|
			rows = rows + 1
		end

				
	end
end
