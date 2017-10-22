require 'csv'
require 'linefit'
require 'English'

class LinRegressionsController < ApplicationController
	def lin

		file = params[:file]
		file_path = file.path

		x = Array.new
		y = Array.new

		CSV.foreach(file_path).with_index(1) do |row, index|
			x.push index
			y.push row[0].to_f
		end

		line = LineFit.new

		line.setData(x, y)

		slope, intercept = line.coefficients
		
		render plain: '%.6f,%.6f' % [slope, intercept]
	end
end
