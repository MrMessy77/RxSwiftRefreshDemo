//
//  BaseViewController.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/17.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.configDefStyle()
    }
    
    //MARK: - 默认配置

    private func configDefStyle() {
        view.backgroundColor = baseview_color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
