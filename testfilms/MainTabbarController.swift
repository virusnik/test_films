//
//  ViewController.swift
//  testfilms
//
//  Created by Sergio Veliz on 10/1/18.
//  Copyright © 2018 Sergio Veliz. All rights reserved.
//

import UIKit

let tabBarController = UITabBarController()

class MainTabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.delegate = self
        
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: view.frame.size.width, height:44)) // Offset by 20 pixels vertically to take the status bar into account
        
        navigationBar.backgroundColor = UIColor.black
        navigationBar.barStyle = .black
        
        // Create a navigation item with a title
        let navigationItem = UINavigationItem()
        navigationItem.title = "Video"
        
        // Create right button for navigation item
    
        let rightButton = UIBarButtonItem(image: UIImage(named: "ic_search") , style: .plain, target: self, action: nil)
        
        // Create button for the navigation item
        
        navigationItem.rightBarButtonItem = rightButton
        navigationItem.rightBarButtonItem?.tintColor = .orange
        // Assign the navigation item to the navigation bar
        navigationBar.items = [navigationItem]
        
        // Make the navigation bar a subview of the current view controller
        self.view.addSubview(navigationBar)
        
        
    }

    @objc func pushToNextVC() {
        let newVC = UIViewController()
        newVC.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(newVC, animated:
            true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        // Create Tab tv
        let tabTV = TVVC()
        let tabTvBar = UITabBarItem(title: "TV", image: UIImage(named: "ic_tv"), selectedImage: UIImage(named: "ic_tv_select"))
        
        tabTV.tabBarItem = tabTvBar
        
        
        // Create Tab video
        let tabVideo = VideoVC()
        let tabVideoBar = UITabBarItem(title: "Video", image: UIImage(named: "ic_video"), selectedImage: UIImage(named: "ic_video_select"))
        
        tabVideo.tabBarItem = tabVideoBar
        
        // Create Tab subscribe
        let tabSubscribe = SubscribeVC()
        let tabSubscribeBar = UITabBarItem(title: "Subscribe", image: UIImage(named: "ic_subscribe"), selectedImage: UIImage(named: "ic_subscribe"))
        
        tabSubscribe.tabBarItem = tabSubscribeBar
        
        // Create Tab settings
        let tabSettings = SettingsVC()
        let tabSettingsBar = UITabBarItem(title: "Settings", image: UIImage(named: "ic_settings"), selectedImage: UIImage(named: "ic_settings"))
        
        tabSettings.tabBarItem = tabSettingsBar
        let tabBar = self.tabBar
        tabBar.tintColor = .orange
        tabBar.backgroundColor = .black
        tabBar.barStyle = .black
        
        self.viewControllers = [tabTV, tabVideo, tabSubscribe, tabSettings]
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }

}

