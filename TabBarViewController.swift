//
//  TabBarViewController.swift
//  005-Tumblr
//
//  Created by Jakub Burkot on 3/4/15.
//  Copyright (c) 2015 Jakub Burkot. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    var viewControllersArray: [UIViewController]! = [UIViewController]()
    var selectedIndex: Int! = 0
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("homeStory") as UIViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("searchStory") as UIViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("accountStory") as UIViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("trendingStory") as UIViewController
        
        viewControllersArray = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        tabBarDidPress(buttons[0])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func tabBarDidPress(sender: AnyObject) {
        
        
        
        removeChildView(viewControllersArray[selectedIndex])
        buttons[selectedIndex].selected = false

        selectedIndex = sender.tag
        
        addChildViewController(viewControllersArray[selectedIndex])
        
        buttons[selectedIndex].selected = true
        
        var tabContentView = viewControllersArray[selectedIndex].view
        
        contentView.addSubview(tabContentView)
        viewControllersArray[selectedIndex].didMoveToParentViewController(self)
        
    }
    
    func removeChildView(content: UIViewController){
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }

    @IBAction func didPressCompose(sender: UIButton) {
        performSegueWithIdentifier("composeSegue", sender: self)
    }

}
