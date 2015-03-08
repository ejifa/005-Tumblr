//
//  ComposeViewController.swift
//  005-Tumblr
//
//  Created by Jakub Burkot on 3/7/15.
//  Copyright (c) 2015 Jakub Burkot. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
    
    @IBOutlet weak var backgroundImage: UIView!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var forthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    
        var isPresenting: Bool = true
    
        required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func animationControllerForPresentedController(presented: UIViewController!, presentingController presenting: UIViewController!, sourceController source: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = true
        return self
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController!) -> UIViewControllerAnimatedTransitioning! {
        isPresenting = false
        return self
    }
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        // The value here should be the duration of the animations scheduled in the animationTransition method
        return 0.4
    }

    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        var containerView = transitionContext.containerView()
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        
        
        if (isPresenting) {
            
            var firstButtonStart = firstButton.center.y + 400
            var firstButtonEnd = firstButton.center.y
            firstButton.center.y = firstButtonStart
            UIView.animateWithDuration(0.8) { () -> Void in
                self.firstButton.center.y = firstButtonEnd
            }
            
            var secondButtonStart = secondButton.center.y + 600
            var secondButtonEnd = secondButton.center.y
            secondButton.center.y = firstButtonStart
            UIView.animateWithDuration(0.9) { () -> Void in
                self.secondButton.center.y = secondButtonEnd
            }
            
            var thirdButtonStart = thirdButton.center.y + 500
            var thirdButtonEnd = thirdButton.center.y
            thirdButton.center.y = thirdButtonStart
            UIView.animateWithDuration(0.5) { () -> Void in
                self.thirdButton.center.y = thirdButtonEnd
            }
            
            var forthButtonStart = forthButton.center.y + 900
            var forthButtonEnd = forthButton.center.y
            forthButton.center.y = forthButtonStart
            UIView.animateWithDuration(0.5) { () -> Void in
                self.forthButton.center.y = forthButtonEnd
            }
            
            var fifthButtonStart = fifthButton.center.y + 500
            var fifthButtonEnd = fifthButton.center.y
            fifthButton.center.y = fifthButtonStart
            UIView.animateWithDuration(0.7) { () -> Void in
                self.fifthButton.center.y = fifthButtonEnd
            }
            
            var sixthButtonStart = sixthButton.center.y + 700
            var sixthButtonEnd = sixthButton.center.y
            sixthButton.center.y = sixthButtonStart
            UIView.animateWithDuration(0.6) { () -> Void in
                self.sixthButton.center.y = sixthButtonEnd
            }
            
            
            containerView.addSubview(toViewController.view)
            toViewController.view.alpha = 0
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                toViewController.view.alpha = 1
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
            }
        } else {
            UIView.animateWithDuration(0.4, animations: { () -> Void in
                fromViewController.view.alpha = 0
                }) { (finished: Bool) -> Void in
                    transitionContext.completeTransition(true)
                    fromViewController.view.removeFromSuperview()
            }
        }
    }

    @IBAction func didPressDismiss(sender: AnyObject) {
        
        var firstButtonOut = firstButton.center.y - 350
        UIView.animateWithDuration(0.8) { () -> Void in
            self.firstButton.center.y = firstButtonOut
        }
        
        var secondButtonOut = secondButton.center.y - 550
        UIView.animateWithDuration(0.9) { () -> Void in
            self.secondButton.center.y = secondButtonOut
        }
        
        var thirdButtonOut = thirdButton.center.y - 450
        UIView.animateWithDuration(0.8) { () -> Void in
            self.thirdButton.center.y = thirdButtonOut
        }
        
        var forthButtonOut = forthButton.center.y - 300
        UIView.animateWithDuration(0.7) { () -> Void in
            self.forthButton.center.y = forthButtonOut
        }
        
        var fifthButtonOut = fifthButton.center.y - 400
        UIView.animateWithDuration(0.6) { () -> Void in
            self.fifthButton.center.y = fifthButtonOut
        }
        
        var sixthButtonOut = sixthButton.center.y - 300
        UIView.animateWithDuration(0.7) { () -> Void in
            self.sixthButton.center.y = sixthButtonOut
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }


}
