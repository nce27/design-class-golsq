require "music_tracker"

RSpec.describe Music do
  it "creates an empty tracklist" do
    music_tracks = Music.new
    expect(music_tracks.tracklist).to eq []
    
  end
end

