require "music_tracker"

RSpec.describe Music do
  context "when given no tracks" do
    it "creates an empty tracklist" do
      music_tracks = Music.new
      expect(music_tracks.tracklist).to eq []
    end
  end

  describe "#music_tracks" do
    context "when given a track" do
      it "adds to tracklist" do
        music_tracks = Music.new
        music_tracks.add("Can't stop coding")
        expect(music_tracks.tracklist).to eq ["Can't stop coding"]
      end

    end
  end
end

