class CalendarsController < ApplicationController
protect_from_forgery with: :exception
	def index
	end

	def show
		@calendar = Calendar.find(params[:id])
	end

	def new
		@calendar = Calendar.new
	end

	def create
		@calendar = Calendar.new(calendar_params)
		@calendar.save
		redirect_to @calendar
	end

	private

	def calendar_params
		params.require(:calendar).permit(:name)
	end
end
