//
//  MyVoice.h
//  VoiceReporting
//
//  Created by WCiOS on 15/12/18.
//  Copyright © 2015年 WCiOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iflyMSC/iflyMSC.h"
#import "iflyMSC/IFlySpeechConstant.h"
#import "iflyMSC/IFlySpeechSynthesizer.h"
#import "iflyMSC/IFlySpeechSynthesizerDelegate.h"

@interface MyVoice : NSObject{
    id   _delegate;
}
@property (nonatomic, strong) IFlySpeechSynthesizer * iFlySpeechSynthesizer;
- (id)initWithText:(NSString *)text saveFileName:(NSString *)name delegate:(id)delegate;
- (void)stop;

@end
