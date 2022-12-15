require "Music"

RSpec.describe Music do
    context "with no entries" do 
        it "has an empty list" do
            music = Music.new
            expect(music.list_of_music_tracks).to eq []
        end 
    end 
 

    context "given an entry with a music track only" do
        it "stores the music track" do 
             music = Music.new
             music.extract_music_tracks("It's Beginning To Look A Lot Like Christmas-Michael Bublé")
             expect(music.list_of_music_tracks).to eq ["It's Beginning To Look A Lot Like Christmas-Michael Bublé"]
        end
    end 
    
    context "given two entries with music tracks" do 
        it "stores all music tracks seen" do 
            music = Music.new
            music.extract_music_tracks("It's Beginning To Look A Lot Like Christmas-Michael Bublé")
            music.extract_music_tracks("Last Christmas-Wham!")
            expect(music.list_of_music_tracks).to eq ["It's Beginning To Look A Lot Like Christmas-Michael Bublé", "Last Christmas-Wham!"]
        end 
    end 


    context "given entries that have duplicate music tracks" do
        it "only stores unique music tracks" do
            music = Music.new
            music.extract_music_tracks("Last Christmas-Wham!")
            music.extract_music_tracks("Last Christmas-Wham!")
            expect(music.list_of_music_tracks).to eq ["Last Christmas-Wham!"]
        end
    end
end
     