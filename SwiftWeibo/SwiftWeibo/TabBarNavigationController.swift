//
//  TabBarNavigationController.swift
//  SwiftWeibo
//
//  Created by guyuanshan on 2018/10/26.
//  Copyright © 2018年 guyuanshan. All rights reserved.
//

import UIKit

class TabBarNavigationController: UINavigationController {
    
    //MARK: - 重写NaviagtionController的push方法，实现跳转之后隐藏TabBar
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if childViewControllers.count >= 1 {
             viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
