require 'csv'

class FiltersController < ApplicationController
	def filter
		file = params[:file]
		file_path = file.path
		filteredSum = 0
		
		CSV.foreach(file.path) do |row|
			if row[2].to_i.odd?
				filteredSum += row[1].to_f
			end
		end

		filteredSum.ceil()
		render plain: '%.2f' % filteredSum
	end
end
