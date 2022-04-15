//
//  Coffee.swift
//  DeepLink
//
//  Created by Ethan Lin on 2022/4/16.
//

import Foundation

struct Coffee: Identifiable {
    var id: String
    var title: String
    var description: String
    var image: String
    var price: String
}

var coffees: [Coffee] = [

    Coffee(id: "COFFB01", title: "Espresso shots 義式濃縮咖啡", description: "義式咖啡可以說是超級濃縮的黑咖啡，每杯大小約只有30ml，風味濃郁。點餐的時候，你甚至還可以調整濃度：single(單份)、double(雙份)和triple(三倍)。基本上所有的花式咖啡就是用義式濃縮為基調，搭配上不同的糖奶比例所製成的。", image: "Coffee-Espresso", price: "$60"),
    Coffee(id: "COFFB02", title: "Americano 美式咖啡", description: "美式咖啡基本上就是泛指黑咖啡，也就是Espresso對水，雖然各家美式咖啡的比例不同，但整體來說Americano的口味較Espresso淡，是較普遍為大眾接受的入門選擇。", image: "Americano", price: "$45"),
    Coffee(id: "COFFB03", title: "Café Latte 拿鐵", description: "latte在義大利文中是牛奶的意思，Café Latte就是以牛奶為主角的咖啡，是所有花式咖啡中牛奶比例占比最高的─咖啡：牛奶：奶泡=1:2:1。", image: "Latte", price: "$55"),
    Coffee(id: "COFFB04", title: "Cappuccino 卡布奇諾", description: "卡布奇諾的製作比例和拿鐵稍微有些不同─咖啡：牛奶：奶泡=1:1:1，並灑上一些肉桂或可可粉增添風味。", image: "Cappuccino", price: "$45")
]
