class ApplicationController < ActionController::Base
	protect_from_forgery prepend: true

	before_action :set_title

	def set_title 
		@page_title = "JM Freight"
	end

end
