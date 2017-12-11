class HomeController < ApplicationController
    def index
        #@langs = ['ruby','php','java','go','phyton']
        #@title = 'Programming Language'

        #@studios = Studio.all

        #render layout: 'utama'
    end
    
    def halo
        id = params[:id]
        studio = Studio.find_by id: id
        if studio
            @namaband = studio.nama_band
        else
            @namaband = 'tidak ditemukan'
        end
    end

    def about
    end
end