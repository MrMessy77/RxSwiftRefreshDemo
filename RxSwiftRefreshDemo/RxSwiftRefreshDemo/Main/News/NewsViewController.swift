//
//  NewsViewController.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/14.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit

class NewsViewController: BaseViewController {

    var newsView: NewsView!
    let newsViewModel = NewsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //初始化子视图
        newsView = NewsView(view: self.view)
        
        //数据初始化
        newsViewModel.prepare(newsView.tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
