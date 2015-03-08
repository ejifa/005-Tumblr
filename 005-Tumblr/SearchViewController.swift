//
//  SearchViewController.swift
//  005-Tumblr
//
//  Created by Jakub Burkot on 3/7/15.
//  Copyright (c) 2015 Jakub Burkot. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var images = UIImage.animatedImageNamed("loading-", duration: 0.7)
    @IBOutlet weak var loadingImage: UIImageView!
    @IBOutlet weak var searchImageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        searchImageView.hidden = true
        
        loadingImage.image = images
        
        delay(2) { () -> () in
            self.searchImageView.hidden = false
            self.loadingImage.hidden = true
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}