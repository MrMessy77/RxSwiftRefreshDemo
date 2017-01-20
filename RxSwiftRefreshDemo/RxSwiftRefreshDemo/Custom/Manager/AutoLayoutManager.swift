//
//  AutoLayoutManager.swift
//  SimpleNews
//
//  Created by MrMessy on 2017/1/18.
//  Copyright © 2017年 MrMessy. All rights reserved.
//

import UIKit
import WHC_AutoLayoutKit_Swift2_3

extension UIView {
    /**
     * 说明:设置左边距(默认相对父视图)
     * @param space: 左边距
     * @return 返回当前视图
     */
    public func mm_Left(space: CGFloat) -> UIView {
        return self.whc_Left(space)
    }
    
    /**
     * 说明:设置左边距
     * @param space: 左边距
     * @param toView: 相对参考视图
     * @return 返回当前视图
     */
    public func mm_Left(space: CGFloat, toView: UIView!) -> UIView {
        return self.whc_Left(space, toView: toView)
    }
    
    /**
     * 说明：设置左边距相等
     * @param view 左边距相等参考视图
     * @return 返回当前视图
     */
    
    public func mm_LeftEqual(view: UIView) -> UIView {
        return self.whc_LeftEqual(view)
    }
    
    /**
     * 说明：设置左边距相等
     * @param view 左边距相等视图
     * @param offset 偏移量
     * @return 返回当前视图
     */
    public func mm_LeftEqual(view: UIView, offset: CGFloat) -> UIView {
        return self.whc_LeftEqual(view, offset: offset)
    }
    
    /**
     * 说明:设置右边距(默认相对父视图)
     * @param space: 右边距
     * @return 返回当前视图
     */
    public func mm_Right(space: CGFloat) -> UIView {
        return self.whc_Right(space)
    }
    
    /**
     * 说明:设置右边距
     * @param space: 右边距
     * @param toView: 设置右边距参考视图
     * @return 返回当前视图
     */
    public func mm_Right(space: CGFloat, toView: UIView!) -> UIView {
        return self.whc_Right(space, toView: toView)
    }
    
    /**
     * 说明: 设置右边距相等
     * @param view 右边距相等参考视图
     * @return 返回当前视图
     */
    public func mm_RightEqual(view: UIView) -> UIView {
        return self.whc_RightEqual(view)
    }
    
    /**
     * 说明: 设置右边距相等
     * @param view 右边距相等参考视图
     * @param offset 偏移量
     * @return 返回当前视图
     */
    public func mm_RightEqual(view: UIView, offset: CGFloat) -> UIView {
        return self.whc_RightEqual(view, offset: offset)
    }
    
    /**
     * 说明:设置顶边距(默认相对父视图)
     * @param top: 顶边距
     * @return 返回当前视图
     */
    public func mm_Top(space: CGFloat) -> UIView {
        return self.whc_Top(space)
    }
    
    /**
     * 说明:设置顶边距
     * @param top: 顶边距
     * @param toView: 顶边距相对参考视图
     * @return 返回当前视图
     */
    public func mm_Top(space: CGFloat, toView: UIView!) -> UIView {
        return self.whc_Top(space, toView: toView)
    }
    
    /**
     * 说明：设置顶边距相等
     * @param view 顶边距相等参考视图
     * @return 返回当前视图
     */
    public func mm_TopEqual(view: UIView) -> UIView {
        return self.whc_TopEqual(view)
    }
    
    /**
     * 说明：设置顶边距相等
     * @param view 顶边距相等参考视图
     * @param offset 偏移量
     * @return 返回当前视图
     */
    public func mm_TopEqual(view: UIView, offset: CGFloat) -> UIView {
        return self.whc_TopEqual(view, offset: offset)
    }
    
    /**
     * 说明:设置底边距(默认相对父视图)
     * @param bottom: 底边距
     * @return 返回当前视图
     */
    public func mm_Bottom(space: CGFloat) -> UIView {
        return self.whc_Bottom(space)
    }
    
    /**
     * 说明:设置底边距
     * @param bottom: 底边距
     * @param toView: 底边距相对参考视图
     * @return 返回当前视图
     */
    public func mm_Bottom(space: CGFloat, toView: UIView!) -> UIView {
        return self.whc_Bottom(space, toView: toView)
    }
    
    /**
     * 说明：设置底边距相等
     * @param view 底边距相等参考视图
     * @return 返回当前视图
     */
    public func mm_BottomEqual(view: UIView) -> UIView {
        return self.whc_BottomEqual(view)
    }
    
    /**
     * 说明：设置底边距相等
     * @param view 底边距相等参考视图
     * @param offset 偏移量
     * @return 返回当前视图
     */
    public func mm_BottomEqual(view: UIView, offset: CGFloat) -> UIView {
        return self.whc_BottomEqual(view, offset: offset)
    }
    
    /**
     * 说明:设置高度
     * @param height: 高度
     * @return 返回当前视图
     */
    public func mm_Height(height: CGFloat) -> UIView {
        return self.whc_Height(height)
    }
    
    /**
     * 说明:设置宽度
     * @param width: 宽度
     * @return 返回当前视图
     */
    public func mm_Width(width: CGFloat) -> UIView {
        return self.whc_Width(width)
    }
    
    /**
     * 说明:设置中心相等
     * @param view 相等参考视图
     * @return 返回当前视图
     */
    public func mm_CenterEqual(view: UIView) -> UIView {
        return self.whc_CenterEqual(view)
    }
    
    
    /**
     * 说明:设置中心偏移(默认相对父视图)x,y = 0 与父视图中心重合
     * @param x,y: 中心偏移量
     * @return 返回当前视图
     */
    public func mm_Center(x: CGFloat, y: CGFloat) -> UIView {
        return self.whc_Center(x, y: y)
    }
    
    /**
     * 说明: 设置左边距(默认相对父视图)
     * @param leading 左边距
     * @return 返回当前视图
     */
    public func mm_Leading(space: CGFloat) -> UIView {
        return self.whc_Leading(space)
    }
    
    /**
     * 说明：设置左边距相等
     * @param view 左边距相等参考视图
     * @return 返回当前视图
     */
    public func mm_LeadingEqual(view: UIView) -> UIView {
        return self.whc_LeadingEqual(view)
    }
    
    /**
     * 说明：设置左边距
     * @param leading 左边距
     * @param toView 左边距相对参考视图
     * @return 返回当前视图
     */
    public func mm_Leading(space: CGFloat, toView: UIView!) -> UIView {
        return self.whc_Leading(space, toView: toView)
    }
    
    /**
     * 说明：设置左边距相等
     * @param view 左边距相等参考视图
     * @param offset 偏移量
     * @return 返回当前视图
     */
    public func mm_LeadingEqual(view: UIView, offset: CGFloat) -> UIView {
        return self.whc_LeadingEqual(view, offset: offset)
    }
    
    /**
     * 说明: 设置size相等
     * @param view size相等参考视图
     * @return 返回当前视图
     */
    public func mm_SizeEqual(view: UIView) -> UIView {
        return self.whc_SizeEqual(view)
    }
}
