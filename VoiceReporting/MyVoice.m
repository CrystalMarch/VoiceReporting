//
//  MyVoice.m
//  VoiceReporting
//
//  Created by WCiOS on 15/12/18.
//  Copyright © 2015年 WCiOS. All rights reserved.
//

#import "MyVoice.h"

@implementation MyVoice

- (id)initWithText:(NSString *)text saveFileName:(NSString *)name delegate:(id)delegate{
    self = [super init];
    if (self) {
        _delegate = delegate;
        _iFlySpeechSynthesizer = [IFlySpeechSynthesizer sharedInstance];
        _iFlySpeechSynthesizer.delegate = _delegate;
        //音量,取值范围 0~100
        [_iFlySpeechSynthesizer setParameter:@"50" forKey: [IFlySpeechConstant VOLUME]]; //发音人,默认为”xiaoyan”,可以设置的参数列表可参考“合成发音人列表” [_iFlySpeechSynthesizer setParameter:@" xiaoyan " forKey: [IFlySpeechConstant VOICE_NAME]];
        //保存合成文件名,如不再需要,设置设置为nil或者为空表示取消,默认目录位于 library/cache下
        [_iFlySpeechSynthesizer setParameter:name forKey: [IFlySpeechConstant TTS_AUDIO_PATH]];
        [_iFlySpeechSynthesizer startSpeaking: text];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(stop) name:@"closeVoice" object:nil];
    }
    return self;
}
- (void)stop{
        [_iFlySpeechSynthesizer stopSpeaking];
    
}
@end
