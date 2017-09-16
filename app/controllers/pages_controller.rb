class PagesController < ApplicationController
  
  def album
    puts "Album-1: #{params}"
    @album = Album.find(params[:format])
  end

  def clubs
    @clubs = Club.active
  end
  
  def home
    @directions = Direction.active
    @newsbites  = Newsbite.active.actual.order(:published_on).reverse_order
    
    @albums = Album.active
    @carousel_covers = []
    @albums.each do |a|
      @carousel_covers << a.cover
    end
  end

  def subjects
    @subjects = Subject.active
  end
  
  def tour
    @tour = Tour.find(params[:id])
  end
  
  def tours
     @tours = Tour.active
  end
  
end
