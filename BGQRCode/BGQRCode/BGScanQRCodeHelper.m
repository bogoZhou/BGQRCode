//
//  BGScanQRCodeHelper.m
//  BGQRCode
//
//  Created by 周博 on 16/9/7.
//  Copyright © 2016年 BogoZhou. All rights reserved.
//

#import "BGScanQRCodeHelper.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

static BGScanQRCodeHelper *manager = nil;
static dispatch_once_t once;
@interface BGScanQRCodeHelper ()<AVCaptureMetadataOutputObjectsDelegate>
{
    //输入输出中间池
    AVCaptureSession * _avSession;
    
    //捕捉视频采集预览层
    AVCaptureVideoPreviewLayer * _avPreviewLayer;
    
    //捕捉元数据输出
    AVCaptureMetadataOutput * _avOutput;
    
    //捕捉设备输入
    AVCaptureDeviceInput * _avInput;
    
    //图层的父视图
    UIView * _superView;
}
@end

@implementation BGScanQRCodeHelper

+(BGScanQRCodeHelper *)manager{
    dispatch_once(&once, ^{
        manager = [[BGScanQRCodeHelper alloc] init];
    });
    return manager;
}

@end
