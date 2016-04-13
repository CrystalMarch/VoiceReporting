//
//  ViewController.m
//  VoiceReporting
//
//  Created by WCiOS on 15/12/17.
//  Copyright © 2015年 WCiOS. All rights reserved.
//

#import "ViewController.h"
#import "MyVoice.h"
@interface ViewController ()

@end

@implementation ViewController{
    MyVoice *_voice;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //Text想要播报的文本   saveFileName是否存储生成文件及文件名  delegate代理
    _voice = [[MyVoice alloc] initWithText:@"ipa 文件大小 = 引擎编译后(5MB) + 基础资源(4.3MB) + 所选择的发音人资 源(如:小燕 4.1MB)。 下面代码是集成本地资源时需要添加的部分,其他代码与在线一致。" saveFileName:nil delegate:self];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [button setTitle:@"暂停播放" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(stopVoiceReport) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)stopVoiceReport{
    //    暂停生成语音，停止播报
    [_voice stop];

}




@end
