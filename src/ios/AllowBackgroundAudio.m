#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface AllowBackgroundAudio : CDVPlugin
{}
@end

@implementation AllowBackgroundAudio

- (void)pluginInitialize {
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:nil];
}

@end
