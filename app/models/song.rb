class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name unless artist.nil?
    #  gets the artist name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
    # can set the artist via name
    # finds artist if already exists
  end
end
