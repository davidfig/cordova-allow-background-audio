#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface AllowBackgroundAudio : CDVPlugin
{}
@end

@implementation AllowBackgroundAudio

- (void)pluginInitialize {
    NSError *error;
    BOOL success = [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:&error];
    if (!success) {
        NSLog(@"%@", [error localizedDescription]);
    }
}

@end
