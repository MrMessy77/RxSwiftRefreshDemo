//
//  BaseCell.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/16.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit

class BaseCell: UITableViewCell {

    /** 图片 */
    var basePic: UIView!
    /** 标题 */
    var baseTitle: UIView!
    /** 详情 */
    var baseDec: UIView!
    /** 分割线 */
    var bottomLine: UIView!
    
    /** cell颜色 */
    internal var cell_color: UIColor!=UIColor.colorWithHexCode("333333") {
        didSet {
            self.colorChanged()
        }
    }
    /** cell透明度 */
    internal var cell_alpha: CGFloat!=0.6 {
        didSet {
            self.colorChanged()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .None
        backgroundColor = color_Clear
        
        self.initSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - 初始化子视图

    private func initSubviews() {
        basePic = UIView()
        basePic.backgroundColor = cell_color.colorWithAlphaComponent(cell_alpha)
        contentView.addSubview(basePic)
        basePic.mm_Leading(10).mm_Top(12).mm_Height(70).mm_Width(100)
        
        baseTitle = UIView()
        baseTitle.backgroundColor = cell_color.colorWithAlphaComponent(cell_alpha)
        contentView.addSubview(baseTitle)
        baseTitle.mm_Leading(15, toView: basePic).mm_TopEqual(basePic).mm_Height(5).mm_Width(CGFloat(220).scale_W)

        baseDec = UIView()
        baseDec.backgroundColor = cell_color.colorWithAlphaComponent(cell_alpha)
        contentView.addSubview(baseDec)
        baseDec.mm_LeadingEqual(baseTitle).mm_Top(10, toView: baseTitle).mm_Height(5).mm_Width(CGFloat(150).scale_W)
        
        bottomLine = UIView()
        bottomLine.backgroundColor = cell_color.colorWithAlphaComponent(cell_alpha)
        contentView.addSubview(bottomLine)
        bottomLine.mm_Left(10).mm_Right(10).mm_Height(0.5).mm_Top(12, toView: basePic)
    }
    
    //MARK: - cell颜色改变
    
    private func colorChanged() {
        for view in self.contentView.subviews {
            view.backgroundColor = cell_color.colorWithAlphaComponent(cell_alpha)
        }
    }
}
