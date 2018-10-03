//
//  ViewController.swift
//  testfilms
//
//  Created by Sergio Veliz on 10/1/18.
//  Copyright © 2018 Sergio Veliz. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Create Tab tv
        let navControllerTV = UINavigationController(rootViewController: TVVC())
        let tabTV = navControllerTV
        let tabTvBar = UITabBarItem(title: "TV", image: UIImage(named: "ic_tv"), selectedImage: UIImage(named: "ic_tv_select"))
        
        tabTV.tabBarItem = tabTvBar
        
        
        // Create Tab video
        let navControllerVideo = UINavigationController(rootViewController: VideoVC())
        let tabVideo = navControllerVideo
        let tabVideoBar = UITabBarItem(title: "Video", image: UIImage(named: "ic_video"), selectedImage: UIImage(named: "ic_video_select"))
        
        tabVideo.tabBarItem = tabVideoBar
        
        // Create Tab subscribe
        let navControllerSubscribe = UINavigationController(rootViewController: SubscribeVC())
        let tabSubscribe = navControllerSubscribe
        let tabSubscribeBar = UITabBarItem(title: "Subscribe", image: UIImage(named: "ic_subscribe"), selectedImage: UIImage(named: "ic_subscribe"))
        
        tabSubscribe.tabBarItem = tabSubscribeBar
        
        // Create Tab settings
        let navControllerSettings = UINavigationController(rootViewController: SettingsVC())
        let tabSettings = navControllerSettings
        let tabSettingsBar = UITabBarItem(title: "Settings", image: UIImage(named: "ic_settings"), selectedImage: UIImage(named: "ic_settings"))
        
        tabSettings.tabBarItem = tabSettingsBar
        let tabBar = self.tabBar
        tabBar.tintColor = .orange
        tabBar.backgroundColor = .black
        tabBar.barStyle = .black
        
        self.viewControllers = [tabTV, tabVideo, tabSubscribe, tabSettings]
        
    }

}

