//
//  AppDelegate.m
//  carWash
//
//  Created by Wuxinglin on 2017/7/17.
//  Copyright © 2017年 DS. All rights reserved.
//

#import "AppDelegate.h"

#import "HomeViewController.h"
#import "BusinessViewController.h"
#import "ActivityViewController.h"
#import "PurchaseViewController.h"
#import "MySettingViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window                 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UITabBarController *tb          = [[UITabBarController alloc]init];
    self.window.rootViewController  = tb;
    
    HomeViewController *homeVC      = [[HomeViewController alloc]init];
    homeVC.view.backgroundColor     = [UIColor redColor];
    homeVC.tabBarItem.title         =  @"首页";
    homeVC.tabBarItem.image         = [UIImage imageNamed:@"homeL"];
    
    BusinessViewController *businessVC  = [[BusinessViewController alloc]init];
    businessVC.view.backgroundColor     = [UIColor greenColor];
    businessVC.tabBarItem.title         = @"商家";
    businessVC.tabBarItem.image         = [UIImage imageNamed:@"messageL"];
    
    ActivityViewController *activityVC  = [[ActivityViewController alloc]init];
    activityVC.view.backgroundColor     = [UIColor grayColor];
    activityVC.tabBarItem.title         = @"活动";
    activityVC.tabBarItem.image         = [UIImage imageNamed:@"reportL"];
    
    PurchaseViewController *purchaseVC  = [[PurchaseViewController alloc]init];
    purchaseVC.view.backgroundColor     = [UIColor yellowColor];
    purchaseVC.tabBarItem.title         = @"购卡";
    purchaseVC.tabBarItem.image         = [UIImage imageNamed:@"BarItemSelected"];
    
    MySettingViewController *mySettingVC    = [[MySettingViewController alloc]init];
    mySettingVC.view.backgroundColor        = [UIColor blueColor];
    mySettingVC.tabBarItem.title            = @"我的";
    mySettingVC.tabBarItem.image            = [UIImage imageNamed:@"shopL"];
    
    tb.viewControllers                      = @[homeVC,businessVC,activityVC,purchaseVC,mySettingVC];
    
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
