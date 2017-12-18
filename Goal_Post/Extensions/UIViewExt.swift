//
//  UIViewExt.swift
//  Goal_Post
//
//  Created by Donald Belliveau on 2017-12-18.
//  Copyright © 2017 Donald Belliveau. All rights reserved.
//

import UIKit

extension UIView {
    
    /* Bind To Keyboard Function. */
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    } // END Bind To Keyboard.
    
    
    /* Keyboard Will Change Function. */
    @objc func keyboardWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
            // Subtract the end from start to give you the size of the keyboard so we know how much to move the View up.
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIViewKeyframeAnimationOptions.init(rawValue: curve), animations: {
                // self could be the button.  So, take the position of the button and add the amount the keyboard has moved up.
            self.frame.origin.y += deltaY
        }, completion: nil)
    } // END Keyboard Will Change.
    
} // END Extension.


/*
 
 UIViewExt: 
 
 */
