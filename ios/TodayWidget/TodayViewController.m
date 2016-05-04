//
//  TodayViewController.m
//  TodayWidget
//
//  Created by Richard Lai on 5/4/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import <RCTRootView.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)loadView {
  NSURL *jsCodeLocation = [NSURL URLWithString:@"http://192.168.1.43:8081/index.ios.bundle?platform=ios&dev=false"];
  
  // attempt to initialize an RCTRootView and use it as the root view of our
  // plain ‘ol UIViewController
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"TodayWidget"
                                               initialProperties:nil
                                                   launchOptions:nil];
  self.view = rootView;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setPreferredContentSize:CGSizeMake(0, 200)];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
  // Perform any setup necessary in order to update the view.
    
  // If an error is encountered, use NCUpdateResultFailed
  // If there's no update required, use NCUpdateResultNoData
  // If there's an update, use NCUpdateResultNewData

  completionHandler(NCUpdateResultNewData);
}

@end
