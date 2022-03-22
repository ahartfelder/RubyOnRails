class Song
  # Class Variable -> shared among all objects of a class
  @@plays
  # initialize is a special method to construct a new object: Object.new
  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end
  
  # as standard, it reports the object id, however it can be overriden by creating a to_s method.
  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end
  
# the previous methods are private, thus to access the instance variable, it is needed to create visible methods.
  # def name
  #   @name
  # end
  # def artist
  #   @artist
  # end
  # def duration
  #   @duration
  # end
# to make it easier, attr_reader can be used instead of creating all methods.
  attr_reader :name, :artist, :duration
# writable attributes -> allow you to set an attribute from outside the object.
  # def duration=(newDuration)
  #   @duration = newDuration
  # end
# to make it easier, attr_writer can be used instead of creating all methods.
  # attr_writer :duration
# if you wanna use both readable and writable attributes, use attr_accessor
  attr_accessor :name, :artist, :duration
# virtual attributes
  def durationInMinutes
    @duration/60.0
  end
  def durationInMinutes=(value)
    @duration = (value*60).to_i
  end
end

# inheritance -> KaraokeSong is a subclass of Song. Song is a superclass of KaraokeSong
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end
  # use of super inherits to_s from parent
  def to_s
    super + " [#{@lyrics}]"
  end
end

# Class Methods
class SongList
  MaxTime = 5*60 # 5 minutes
  def SongList.isTooLong(theSong)
    theSong.duration > MaxTime
  end
end

aSong = Song.new("Bicylops", "Fleck", 260)
puts aSong.inspect # dumps out object's id and instance variables
puts aSong.to_s

bSong = KaraokeSong.new("My Way", "Sinatra", 225, "Bla bla bla")
puts bSong # to_s can be overhidden

puts aSong.name
puts aSong.artist
puts aSong.duration

aSong.duration = 257
puts aSong

# Virtual Attributes
puts aSong.durationInMinutes
aSong.durationInMinutes = 4.2
puts aSong.durationInMinutes

# Class Methods
bSong = Song.new("Innervision", "BYOB", 300)
puts SongList.isTooLong(bSong)
cSong = Song.new("Help", "The Beatles", 500)
puts SongList.isTooLong(cSong)
