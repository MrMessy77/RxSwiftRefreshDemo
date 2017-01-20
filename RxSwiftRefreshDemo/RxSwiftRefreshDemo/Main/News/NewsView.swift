//
//  NewsView.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/16.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit

class NewsView: BaseTableView {

    convenience init(view: UIView) {
        self.init()
        view.addSubview(self)
        self.mm_CenterEqual(view).mm_SizeEqual(view)
        //注册cell信息
        self.tableView.registerClass(NewsCell.self, forCellReuseIdentifier: "NewsCell")
    }
}

public class NewsCell: UITableViewCell {
    
    /** 图片 */
    var picView: UIImageView!
    /** 详细 */
    var decLab: UILabel!
    /** 日期 */
    var dateLab: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .None
        
        self.placeSubViews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - 初始化子视图

    private func placeSubViews() {
        picView = UIImageView()
        picView.backgroundColor = color_333333.colorWithAlphaComponent(0.5)
        contentView.addSubview(picView)
        picView.mm_Left(10).mm_Top(10).mm_Height(70).mm_Width(100)
        
        decLab = UILabel()
        decLab.textColor = color_333333
        decLab.font = UIFont.systemFontOfSize(15)
        decLab.numberOfLines = 3
        contentView.addSubview(decLab)
        decLab.mm_Left(10, toView: picView).mm_TopEqual(picView).mm_Right(10)
        
        dateLab = UILabel()
        dateLab.textColor = color_666666
        dateLab.font = UIFont.systemFontOfSize(11)
        contentView.addSubview(dateLab)
        dateLab.mm_Left(10, toView: picView).mm_BottomEqual(picView)
    }
    
    //MARK: - 配置cell数据信息

    public func config(dec: String, date: String) {
        decLab.text = dec
        dateLab.text = date
    }
}
