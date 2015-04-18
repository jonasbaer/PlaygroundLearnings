//
//  AppDelegate.swift
//  WatchKitConnection
//
//  Created by Jonas Baer on 17.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    //JB : This function allows to receive request form Watch and is able to response :)
    func application(application: UIApplication!, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]!, reply: (([NSObject : AnyObject]!) -> Void)!) {
//        var phoneMessage1 = PhoneMessage()

        //JB : Pass in information from WatchKit to PhoneMessage.swift dictionary and store reply into phoneMessage
        let phoneMessage = PhoneMessage(storeDictionary: userInfo, reply: reply)

        //JB : Let PhoneMessage.swift know that there was a request from the Watch + Defined in viewDidLoad (ViewController)
        NSNotificationCenter.defaultCenter().postNotificationName("WatchKitDidMakeRequest", object: phoneMessage)

//        reply(["working" : "now"]) >> Implemented in the ViewController now...
    }
}

