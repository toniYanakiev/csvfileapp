require 'csv'

class SumsController < ApplicationController
	def sum
	end

	def create
		file = params[:file]
		file_path = file.path
		result = 0;

		CSV.foreach(file_path) do |row|
			result += row[0].to_f
		end

		result.ceil()
		render plain: '%.2f' % result
	end
end
