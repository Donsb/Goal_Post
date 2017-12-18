//
//  UIViewControllerExt.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /* Present Detail Function. */
    func presentDetail(_ viewControllerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
            // self refers to the VC you call this on.
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
            // animated is false so it uses the above code and not the default (true).
        present(viewControllerToPresent, animated: false, completion: nil)
    } // END Present Detail.
    
    
    /* Dismiss Detail Function. */
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        // self refers to the VC you call this on.
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    } // END Dismiss Detail.
    
} // END Extension.






// UIViewControllerExt:  



