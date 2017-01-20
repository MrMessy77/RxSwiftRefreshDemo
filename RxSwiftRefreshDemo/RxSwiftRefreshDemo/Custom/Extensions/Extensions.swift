//
//  Extensions.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/6.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit

//MARK: 扩展方法

//MARK: - UIColor扩展方法
extension UIColor {
    class func colorWithHexCode(code : String) -> UIColor {
        let colorComponent = {(startIndex : Int ,length : Int) -> CGFloat in
            var subHex = code.substringWithRange(Range<String.Index>(start: code.startIndex.advancedBy(startIndex), end: code.startIndex.advancedBy(startIndex + length)))
            subHex = subHex.characters.count < 2 ? "\(subHex)\(subHex)" : subHex
            var component:UInt32 = 0
            NSScanner(string: subHex).scanHexInt(&component)
            return CGFloat(component) / 255.0}
        
        let argb = {() -> (CGFloat,CGFloat,CGFloat,CGFloat) in
            switch(code.characters.count) {
            case 3: //#RGB
                let red = colorComponent(0,1)
                let green = colorComponent(1,1)
                let blue = colorComponent(2,1)
                return (red,green,blue,1.0)
            case 4: //#ARGB
                let alpha = colorComponent(0,1)
                let red = colorComponent(1,1)
                let green = colorComponent(2,1)
                let blue = colorComponent(3,1)
                return (red,green,blue,alpha)
            case 6: //#RRGGBB
                let red = colorComponent(0,2)
                let green = colorComponent(2,2)
                let blue = colorComponent(4,2)
                return (red,green,blue,1.0)
            case 8: //#AARRGGBB
                let alpha = colorComponent(0,2)
                let red = colorComponent(2,2)
                let green = colorComponent(4,2)
                let blue = colorComponent(6,2)
                return (red,green,blue,alpha)
            default:
                return (1.0,1.0,1.0,1.0)
            }}
        
        let color = argb()
        return UIColor(red: color.0, green: color.1, blue: color.2, alpha: color.3)
    }
}

//MARK: - UIScreen扩展方法
extension UIScreen {
    class var screen_Width: CGFloat {//主屏幕宽度
        return UIScreen.mainScreen().bounds.size.width
    }
    class var screen_Height: CGFloat {//主屏幕高度
        return UIScreen.mainScreen().bounds.size.height
    }
    
    class var scrren_Bounds: CGRect {//主屏幕bounds
        return UIScreen.mainScreen().bounds
    }
    
    class var screen_Scale: CGFloat {//主屏幕比例
        return UIScreen.mainScreen().scale
    }
}

//MARK: - UIViewController扩展方法
extension UIViewController {
    //MARK: 显示viewController
    func showChild(viewController: UIViewController, frame: CGRect) {
        addChildViewController(viewController)
        viewController.view.frame = frame
        view.addSubview(viewController.view)
        viewController.didMoveToParentViewController(self)
    }
    
    //MARK: 隐藏viewController
    func hideChild(viewController: UIViewController) {
        viewController.willMoveToParentViewController(self)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }
    
    /**
     *  当使用push的时候隐藏底部的tabbar
     */
    private struct AssociatedKeys {
        static var DescriptiveName = "nsh_DescriptiveName"
    }
    
    var hideBaseTabbarWhenPushed: Bool! {
        get {
            if objc_getAssociatedObject(self, &AssociatedKeys.DescriptiveName) as? Bool == nil {
                return false
            }
            return objc_getAssociatedObject(self, &AssociatedKeys.DescriptiveName) as? Bool
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.DescriptiveName, NSNumber(bool: newValue),objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

//MARK: - CGFloat扩展方法
extension CGFloat {
    var scale_H: CGFloat {
        return  self * UIScreen.screen_Height / 667
    }
    
    var scale_W: CGFloat {
        return  self * UIScreen.screen_Width / 375
    }
}

//MARK: - UILabel扩展方法
extension UILabel {
}
