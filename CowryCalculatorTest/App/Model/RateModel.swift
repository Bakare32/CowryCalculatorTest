//
//  RateModel.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import RealmSwift

class RateList: Object {
    var rates = List<CurrencyRate>()
}

class CurrencyRate: Object {
    @objc dynamic var code = ""
    @objc dynamic var rate = 0.0
}
