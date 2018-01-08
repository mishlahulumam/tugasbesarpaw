class TracksController < ApplicationController
	def index
		@tracks = Track.all
		if params[:search]
            @tracks = Track.where("tracks.tanggal LIKE concat('%',?,'%')",params[:search])
        else
            @tracks = Track.all
        end
	end
	
	def show
		@track = Track.find(params[:id])
	end

	def new
		@track = Track.new
	end

	def create
		@track = Track.new(resource_params)
		if @track.save
            redirect_to track_path(@track.id)
		else
            render 'new'
        end
	end
	
	def edit
		@track = Track.find(params[:id])
	end

	def update
		@track = Track.find(params[:id])
		@track.update(resource_params)
		redirect_to track_path(@track.id)
	end

	def destroy
		track = Track.find(params[:id])
		track.destroy
		redirect_to tracks_path
	end

	private
    def resource_params
        params.require(:track).permit(:tanggal, :nama, :nama_band, :no_hp)
    end
end