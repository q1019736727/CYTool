//
//  GlobalEnum.swift
//  JiMeiCloud
//
//  Created by cy on 2021/3/22.
//


enum OrderDetailType {
    
    //我是更新内容
    
    case OrderComplete // 已完成/
    case OrderWaitPay // 待支付/
    case OrderWaitUse //待使用/
    case OrderCancel // 已取消/
    case OrderRefund // 已退款/
    case OrderTimeout // 已超时/(下单后未支付,订单超时)
    case OrderOverdue // 已过期/(下单后未使用,订单过期)
    
}

extension OrderDetailType {
    var displayName: String{
        switch self {
        case .OrderComplete:
            return "已完成"
        case .OrderWaitPay:
            return "待付款"
        case .OrderWaitUse:
            return "待使用"
        case .OrderCancel,.OrderTimeout:
            return "已取消"
        case .OrderRefund:
            return "已退款"
        case .OrderOverdue:
            return "已过期"
        }
    }
}
