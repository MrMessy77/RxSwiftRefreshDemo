//
//  RefreshManager.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/19.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit
import MJRefresh

//MARK; - 自定义下拉刷新控件
class CustomRefreshHeader: MJRefreshNormalHeader {
    
    override func prepare() {
        super.prepare()
        self.stateLabel?.font = UIFont.systemFontOfSize(14.0)
        self.stateLabel?.textColor = color_999999
        self.lastUpdatedTimeLabel.font = UIFont.systemFontOfSize(14.0)
        self.lastUpdatedTimeLabel?.textColor = color_999999
    }
}

//MARK; - 自定义上拉刷新控件
class CustomRefreshFooter: MJRefreshAutoNormalFooter {
    
    override func prepare() {
        super.prepare()
        self.setTitle("正在获取数据中...", forState: MJRefreshState.Refreshing)
        self.setTitle("加载更多", forState: MJRefreshState.Idle)
        self.setTitle("没有更多", forState: MJRefreshState.NoMoreData)
        self.stateLabel?.font = UIFont.systemFontOfSize(14.0)
        self.stateLabel?.textColor = color_999999
    }
    
    //MARK: - 隐藏footer
    func hideFooter() {
        self.stateLabel?.hidden = true
    }
    
    //MARK: - 显示footer
    func showFooter() {
        self.stateLabel?.hidden = false
    }
    
    override func placeSubviews() {
        super.placeSubviews()
        let loadingView = self.subviews[1] as! UIActivityIndicatorView
        //圈圈
        var arrowCenterX = self.mj_w * 0.5
        if !self.refreshingTitleHidden {
            arrowCenterX -= 80
        }
        let arrowCenterY = self.mj_h * 0.5
        loadingView.center = CGPoint(x: arrowCenterX, y: arrowCenterY)
    }
}
