#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface AllowBackgroundAudio : CDVPlugin
{}
@end

@implementation AllowBackgroundAudio

- (void)pluginInitialize {

    // from https://stackoverflow.com/questions/31000387/customizing-ioss-applicationdidfinishlaunchingwithoptions-method-in-a-cordova
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishLaunching:) name:UIApplicationDidFinishLaunchingNotification object:nil];
}

- (void)finishLaunching:(NSNotification *)notification
{
    NSError *error;
    BOOL success = [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:&error];
    if (!success) {
        NSLog(@"%@", [error localizedDescription]);
    }
}

@end
