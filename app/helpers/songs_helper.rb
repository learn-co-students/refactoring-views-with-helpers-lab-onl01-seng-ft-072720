module SongsHelper

    def display_artist(song)
        #  should respond to #display_artist with 1 argument
        if song.artist.nil?
            link_to 'Add Artist', edit_song_path(song)
            # displays a link to edit the song if artist empty
        else
            link_to song.artist_name, artist_path(song.artist)
            # displays a link to the artist page if artist not empty
        end
    end
end




