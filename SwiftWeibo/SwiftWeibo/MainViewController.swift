//
//  MainViewController.swift
//  SwiftWeibo
//
//  Created by guyuanshan on 2018/10/26.
//  Copyright © 2018年 guyuanshan. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    private lazy var midButton = UIButton()
    @IBOutlet weak var myTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupmidButton()
    }
    
    @objc private func addNewItem() {
        print("添加新微博")
    }
    
    //MARK: - 给tabbar中间添加一个按钮
    private func setupmidButton() {
        //设置midButton的背景图片
        let midButtonImage = UIImage(named: "first")
        midButton.setImage(midButtonImage, for: .normal)
        //将midButton添加到myTabBar
        myTabBar.addSubview(midButton)
        let count = CGFloat(childViewControllers.count)
        //让minButton位于正中间并且完全覆盖原来的BarButtonItem
        let width = myTabBar.bounds.width/count - 1
        midButton.frame = myTabBar.bounds.insetBy(dx: 2*width, dy: 0)
        //按钮监听方法
        midButton.addTarget(self, action: #selector(addNewItem), for: .touchUpInside)
    }
    
}
