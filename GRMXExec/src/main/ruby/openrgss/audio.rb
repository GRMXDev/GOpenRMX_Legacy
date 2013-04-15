# encoding: utf-8 
# The module that carries out music and sound processing.
include java
import org.newdawn.slick.Sound
module Audio
  class <<self

    # Prepares MIDI playback by DirectMusic.
    #
    # A method of the processing at startup in RGSS2 for enabling execution at any time.
    #
    # MIDI playback is possible without calling this method, but in Windows Vista or later, a delay of 1 to 2 seconds will result at playback.

    def setup_mdi

    end

    # Starts BGM playback. Specifies the file name, volume, pitch, and playback starting position in that order.
    #
    # The playback starting position (RGSS3) is only valid for ogg or wav files.
    #
    # Also automatically searches files included in RGSS-RTP. File extensions may be omitted.

    def bgm_play(filename, volume=100, pitch=100, pos=0)
      @bgm=Music.new(RGSS.get_file_as_stream(filename),"bgm") rescue puts($!)
      @bgm.setPosition(pos)
      @bgm.loop(pitch,volume)
    end

    # Stops BGM playback.

    def bgm_stop
      @bgm.stop() if @bgm
    end

    # Starts BGM fadeout. time is the length of the fadeout in milliseconds.

    def bgm_fade(time)
      @bgm.fade(time,0,true)
    end

    # Gets the playback position of the BGM. Only valid for ogg or wav files. Returns 0 when not valid.

    def bgm_pos
      return @bgm.getPosition
    end

    # Starts BGS playback. Specifies the file name, volume, pitch, and playback starting position in that order.
    #
    # The playback starting position (RGSS3) is only valid for ogg or wav files.
    #
    # Also automatically searches files included in RGSS-RTP. File extensions may be omitted.

    def bgs_play(filename, volume=100, pitch=100, pos=0)
      @bgs=Sound.new(RGSS.get_file_as_stream(filename),"bgs") rescue puts($!)
      @bgs.setPosition(pos)
      @bgs.loop(pitch,volume)
    end

    # Stops BGS playback.

    def bgs_stop
      @bgs.stop() if @bgs
    end

    # Starts BGS fadeout. time is the length of the fadeout in milliseconds.

    def bgs_fade(time)
      @bgs.fade(time,0,true)
    end

    # Gets the playback position of the BGS. Only valid for ogg or wav files. Returns 0 when not valid.

    def bgs_pos
      return @bgs.getPosition
    end

    # Starts ME playback. Sets the file name, volume, and pitch in turn.
    #
    # Also automatically searches files included in RGSS-RTP. File extensions may be omitted.
    #
    # When ME is playing, the BGM will temporarily stop. The timing of when the BGM restarts is slightly different from RGSS1.

    def me_play(filename, volume=100, pitch=100)
      @me=Sound.new(RGSS.get_file_as_stream(filename),"bgs") rescue puts($!)
      @me.play(pitch,volume)
    end

    # Stops ME playback.

    def me_stop
      @me.stop() if @me
    end

    # Starts ME fadeout. time is the length of the fadeout in milliseconds.

    def me_fade(time)
      @me.fade(time,0,true)
    end

    # Starts SE playback. Sets the file name, volume, and pitch in turn.
    #
    # Also automatically searches files included in RGSS-RTP. File extensions may be omitted.
    #
    # When attempting to play the same SE more than once in a very short period, they will automatically be filtered to prevent choppy playback

    def se_play(filename, volume=100, pitch=100)
      @se=Sound.new(RGSS.get_file_as_stream(filename),"bgs") rescue puts($!)
      @se.play(pitch,volume)
    end

    # Stops all SE playback.

    def se_stop
      @se.stop() if @se
    end
  end
end