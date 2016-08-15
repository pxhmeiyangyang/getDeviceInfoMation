//
//  ViewController.m
//  DeviceDemo
//
//  Created by pxh on 16/8/15.
//  Copyright © 2016年 裴新华. All rights reserved.
//

#import "ViewController.h"


//获取运营商信息需要导入的头文件
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getDeviceInfomation];
    [self getTelephonyNetworkInfo];
}
//获取设备的信息
-(void)getDeviceInfomation{
    UIDevice* device        = [[UIDevice alloc]init];
    NSString* name          = device.name;                //获取设备所有者名称
    NSString* model         = device.model;               //获取设备类别
    NSString* type          = device.localizedModel;      //获取本地化版本
    NSString* systemName    = device.systemName;          //获取当前运行的系统
    NSString* systemVersion = device.systemVersion;       //获取当前系统版本
    NSLog(@"\n device.name : %@ \n device.model : %@ \n device.localizedModel : %@ \n device.systemName : %@ \n device.systemVersion : %@",name,model,type,systemName,systemVersion);
}

//获取当前设备的运营商信息
-(void)getTelephonyNetworkInfo{
    CTTelephonyNetworkInfo* info = [[CTTelephonyNetworkInfo alloc]init];
    CTCarrier* carrier = [info subscriberCellularProvider];
    NSLog(@"\n TelephonyNetworkInfo : %@",[carrier carrierName]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
