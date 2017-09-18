class PagesController < ApplicationController
  
  def album
    puts "Album-1: #{params}"
    @album = Album.find(params[:format])
  end

  def events
    @events = Event.active
  end
  
  def home
    @directions = Direction.active
    @newsbites  = Newsbite.active.actual.order(:published_on).reverse_order
    
    @albums = Album.active.shuffle
    @carousel_covers = []
    @albums.each do |a|
      @carousel_covers << a.cover
    end
    
    # Carousel workaround: shift titles fore slides
    @carousel_titles = []
    @albums.each {|a| @carousel_titles << a.title if a !=@albums.first}
    @carousel_titles << @albums.first.title
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
