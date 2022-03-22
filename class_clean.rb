class Song
  attr_accessor :name, :artist, :duration
  @@plays = 0
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end
  def play
    @plays += 1
    @@plays += 1
    "This song: #@plays plays. Total #@@plays plays."
  end
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
end

class Karaoke < Song
  attr_accessor :name, :artist, :duration, :lyrics
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  def to_s
    super + " [#{@lyrics}]"
  end
  def durationInMinutes
    @duration/60.0 
  end
  def durationInMinutes=(value)
    @duration = (value*60).to_i
  end
end

class SongList
  MaxTime = 5*60
  def SongList.isTooLong(theSong)
    return theSong.duration > MaxTime
  end
end

class Logger
  private_class_method :new
  @@logger = nil
  def Logger.create
    @@logger = new unless @@logger
    @@logger
  end
end

aSong = Song.new("BYOB", "SOAD", 250)
puts aSong.inspect
puts aSong

aKaraoke = Karaoke.new("Yellow Submarine", "The Beatles", 290, "Bla bla bla")
puts aKaraoke.inspect
puts aKaraoke
puts aKaraoke.name
puts aKaraoke.duration = 210
puts aKaraoke.durationInMinutes
puts aKaraoke.durationInMinutes = 2.6

puts aSong.play
puts aKaraoke.play
puts aSong.play
puts aKaraoke.play
puts aKaraoke.play

bSong = Song.new("The Calling", "Santana", 468)
cSong = Song.new("Wherever", "The Calling", 230)
puts bSong.duration

puts SongList.isTooLong(bSong)
puts SongList.isTooLong(cSong)

puts Logger.create.object_id
puts Logger.create.__id__