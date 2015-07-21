//
//  ViewController.h
//  airportbeacon
//
//  Created by Vaibhav Hans on 11/06/15.
//  Copyright (c) 2015 VH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreBluetooth/CoreBluetooth.h>


@interface ViewController : UIViewController <CBPeripheralManagerDelegate>




@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (strong, nonatomic) CLBeaconRegion *myBeaconRegion;
@property (strong, nonatomic) NSDictionary *myBeaconData;
@property (strong, nonatomic) CBPeripheralManager *peripheralManager;


@end

