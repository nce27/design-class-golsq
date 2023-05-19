require "music_tracker"

RSpec.describe Music do
  it "creates an empty tracklist" do
    music_tracks = Music.new
    music_tracks.tracklist
  end
end

