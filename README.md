# Allow Background Audio for iOS

When included within a cordova/phonegap build then the application will not stop any background audio that is playing. Any application sounds will play over the background audio.

No further action is necessary.

# Installation

    cordova plugin add cordova-allow-background-audio
        OR
    cordova plugin add https://github.com/davidfig/cordova-allow-background-audio.git

# Attribution

The code is based on the answer to this question: https://stackoverflow.com/questions/14122363/iphone-app-allow-background-music-to-continue-to-play?lq=1

The plugin was base  https://github.com/AubreyHewes/cordova-background-audio, which does the opposite of this plugin: allows your audio to run in the background when not the app is not in focus.