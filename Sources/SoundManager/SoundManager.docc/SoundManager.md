# ``SoundManager``

`SoundManager` provides a simply way to play sounds in an App.

## Overview

`SoundManager` provides a simply way to play sounds in an App in different channels and having different channels for background music and background effects.

### User Preference Options

`SoundManager` has three build in User Preference properties to control sound:

```
/// Global variable that if `true`, background music will be played in the game.
@AppStorage("playBackgroundMusic") public var shouldPlayBackgroundMusic: Bool = true
    
/// Global variable that if `true`, background sounds will be played in the game.
@AppStorage("playBackgroundSounds") public var shouldPlayBackgroundSounds: Bool = true
    
/// Global variable that if `true`, sound effect will be played in the game.
@AppStorage("playSoundEffects") public var shouldPlaySoundEffects: Bool = true
```

You can provide a UI in your App to allow the end user to control their sound preferences.

### How To Use

`SoundManager` provides several functions for easily playing music or sounds on different channels. The most commonly user are:

* **startBackgroundMusic** - `public func startBackgroundMusic(song:String)` Starts playing the given sound as background music on infinite loop.
* **playBackgroundSound** - `public func playBackgroundSound(sound:String)` Starts playing the given sound as a background sounds on infinite loop.
* **stopBackgroundMusic** - `public func stopBackgroundMusic()` Stops the currently playing background music.
* **stopBackgroundSound** - `public func stopBackgroundSound()` Stops the currently playing background sound.
* **playSoundEffect** - `public func playSoundEffect(sound:String, channel:SoundEffectChannel = .channel01, didFinishPlaying:FinishedPlaying? = nil)` Plays the given sound effect on the given channel. If provided a callback handler, you'll be informed when the sounds stops playing.
* **stopSoundEffect** - `public func stopSoundEffect(channel:SoundEffectChannel = .channel01)` Stops playing the sound effect on the given channel.

**NOTE:** Include any **Music** or **Sound** file in your App's Bundle. When calling a method in the `SoundManager` include the extension of the sound file as well, for example: `MySound.mp3`. Also note that sounds are case sensitive.

