//
//  TrendingViewController.swift
//  005-Tumblr
//
//  Created by Jakub Burkot on 3/7/15.
//  Copyright (c) 2015 Jakub Burkot. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var trendingFeedView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = trendingFeedView.frame.size

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    



}
