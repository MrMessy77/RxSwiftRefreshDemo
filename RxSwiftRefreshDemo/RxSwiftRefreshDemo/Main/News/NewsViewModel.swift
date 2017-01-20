//
//  NewsViewModel.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/14.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class NewsViewModel: BaseViewModel, UITableViewDelegate {
    
    /** 释放资源属性 */
    let disposeBag = DisposeBag()
    /** 资源类属性 */
    let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String,NewsModel>>()
    /** 新闻数据 */
    var news = [NewsModel]()
    var tableView: UITableView!

    //MARK: - 配置基础设置

    func prepare(tableView: UITableView) {
        self.tableView = tableView
        //设置tableView的delegate
        tableView.rx_setDelegate(self).addDisposableTo(disposeBag)
        tableView.mj_header.setRefreshingTarget(self, refreshingAction: #selector(refreshPageOneData))
        tableView.mj_footer.setRefreshingTarget(self, refreshingAction: #selector(refreshNextPageData))
        
        dataSource.configureCell = {dataSource,tableView,indexPath,new in
            let cell = tableView.dequeueReusableCellWithIdentifier("NewsCell", forIndexPath: indexPath) as! NewsCell
            cell.config(new.dec, date: new.date)
            return cell
        }
    }
    
    //MARK: - UITableViewDelegate

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 94
    }
    
    //MARK: - 刷新第一页数据

    func refreshPageOneData() {
        self.news.removeAll()
        for _ in 0..<9 {
            let new = NewsModel(pic: "", dec: "LOL测试服：狼人皮肤调整 酒桶被动增强", date: "2016-07-01")
            news.append(new)
        }
        let sections = [
            SectionModel(model: "", items: news)
        ]
        let items = Observable.just(sections)
        items.bindTo(tableView.rx_itemsWithDataSource(dataSource)).addDisposableTo(disposeBag)
        tableView.mj_header.endRefreshing()
    }
    
    //MARK: - 刷新下一页数据
    
    func refreshNextPageData() {
        for _ in 0..<9 {
            let new = NewsModel(pic: "", dec: "LPL老将Clearlove退役 信任“七号”上线", date: "2016-07-02")
            news.append(new)
        }
        let sections = [
            SectionModel(model: "", items: news)
        ]
        let items = Observable.just(sections)
        tableView.mj_footer.endRefreshing()
        items.bindTo(tableView.rx_itemsWithDataSource(dataSource)).addDisposableTo(disposeBag)
    }
    
    //    func getNews() -> Observable<[SectionModel<String,NewsModel>]> {
    //        return Observable.create({ (observer) -> Disposable in
    //            for _ in 0..<9 {
    //                let new = NewsModel(pic: "", dec: "LOL测试服：狼人皮肤调整 酒桶被动增强", date: "2016-07-01")
    //                self.news.append(new)
    //            }
    //            let sections = [SectionModel(model: "", items: self.news)]
    //            observer.onNext(sections)
    //            observer.onCompleted()
    //            return AnonymousDisposable{}
    //        })
    //    }
}

