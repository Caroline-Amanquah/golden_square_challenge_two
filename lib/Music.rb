class Music
  def initialize
    @music = []
end 

  def extract_music_tracks(text)
    @music << text
    @music.uniq!
  end 

  def list_of_music_tracks
    @music
  end
end 