//
//  Facade.swift
//  PromoApp
//
//  Created by Luzenildo Junior on 18/05/17.
//  Copyright © 2017 Luzenildo-Fernando. All rights reserved.
//

import Foundation

public class Facade{
    
    private static let singleton = PromocoesSingleton.shared
    private static let commands = PromotionCommand()
    
    init(){}
    
    public class func addPromotion(title: String, desc: String, value: Float){
        //let newPromotion = Promotions(description: desc, title: title, price: value)
        //print(singleton.promotionsArray.count)
        //singleton.promotionsArray = commands.add(anyObj: newPromotion, anyObjArray: singleton.promotionsArray) as! [Promotions]
        commands.add(title: title, desc: desc, value: value)
    }
    
    public class func removePromotion(title: String){
        //var i: Int = 0
        //for entry in singleton.promotionsArray{
        //    if entry.getPromoTitle == title {
        //        singleton.promotionsArray = commands.remove(anyObjArray: singleton.promotionsArray, atIndex: i) as! [Promotions]
        //        break
        //    }
        //    i += 1
        //}
        commands.remove(title: title)
    }
    
    class func buscaPromotion(title: String) -> Promotions? {
        //var i: Int = 0
        //while i < singleton.promotionsArray.count{
        //    let searchedPromotion = commands.search(anyObjArray: singleton.promotionsArray, atIndex: i) as! Promotions
        //    if searchedPromotion.getPromoTitle == title{
        //        return searchedPromotion
        //    }else{
        //        i += 1
        //    }
        //}
        return commands.search(title: title)
    }
    
    class func modifyPromotion(title: String, newTitle: String, newDescription: String, newValue: String){
        commands.modify(title: title, newTitle: newTitle, newDesc: newDescription, newValue: newValue)
    }
    
    class func undoModification(){
        commands.undoModification()
    }
}
