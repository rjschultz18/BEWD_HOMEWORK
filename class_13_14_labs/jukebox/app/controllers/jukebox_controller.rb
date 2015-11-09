class JukeboxController < ApplicationController
  def home
  end

  def songs
    @songs = Song.all
  end

  def shuffle
    @songs = Song.all.shuffle
  end
end
