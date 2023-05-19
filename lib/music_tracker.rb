class Music
  def initialize
    @tracks = []
  end

  def tracklist
    return @tracks
      
  end

  def add(tracks)
      @tracks << tracks
  end
end