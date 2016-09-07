//
//  ViewController.m
//  BGQRCode
//
//  Created by 周博 on 16/9/7.
//  Copyright © 2016年 BogoZhou. All rights reserved.
//

#import "ViewController.h"
#import "BGSDK.h"
#import "BGScanQRCodeHelper.h"

@interface ViewController ()<BGScanQRCodeHelperDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _scanView.layer.masksToBounds = YES;
    _scanView.layer.borderColor = [kColorFrom0x(0x404040) CGColor];
    _scanView.layer.borderWidth = 1.f;
    
    [self BGScan];
}

- (void)BGScan{
    [[BGScanQRCodeHelper manager] setSupperView:self.view];
    [[BGScanQRCodeHelper manager] setScanningRect:_scanView.frame scanView:_scanView];
    [BGScanQRCodeHelper manager].delegate = self;
    [[BGScanQRCodeHelper manager] startRunning];
}

- (void)resaultString:(NSString *)resault{
//    kAlert(resault);
    _textViewResault.text = resault;
}

- (IBAction)scanQRCode:(UIButton *)sender {
    [[BGScanQRCodeHelper manager] startRunning];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
