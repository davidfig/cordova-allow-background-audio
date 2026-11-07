#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface AllowBackgroundAudio : CDVPlugin
{}
@end

@implementation AllowBackgroundAudio

- (void)pluginInitialize {

    // Set this here, not on UIApplicationDidFinishLaunchingNotification: cordova-ios 8 creates plugins
    // from its SceneDelegate, after that notification has already fired.
    // from https://stackoverflow.com/questions/14122363/iphone-app-allow-background-music-to-continue-to-play?lq=1
    NSError *error;
    BOOL success = [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:&error];
    if (!success) {
        NSLog(@"%@", [error localizedDescription]);
    }
}

@end
