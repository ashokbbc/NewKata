//
//  NewKataTests.swift
//  NewKataTests
//
//  Created by Ashok Machineni on 07/03/2025.
//

import XCTest


//1️⃣ Max Profit with One Transaction
//Problem:
//You are given an array `prices` where `prices[i]` is the price of a given stock on the `i-th` day.
//You want to maximize your profit by choosing one day to buy a stock and a different day in the future to sell that stock.
//Return the maximum profit you can achieve from this transaction.
//If you cannot achieve any profit, return `0`.
//Example 1:
//
//    Input: prices = [7,1,5,3,6,4]
//    Output: 5
//    Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6 - 1 = 5.
//
//Example 2:
//
//    Input: prices = [7,6,4,3,1]
//    Output: 0
//    Explanation: No transactions can be made, so max profit = 0.


final class NewKataTests: XCTestCase {
    
    var inputPrices: [Int]!
    var sut: StockTradingObject!
    var returnedProfit: Int!
    
    func test_givenWeekHasNoProfit_sutReturns0() {
        givenBadWeek()
        givenSUT()
        whenGetMaxProfitCalled()
        thenProfitReturned(0)
    }
    
    func test_givenWeekHasProfit_sutReturns5() {
        givenGoodWeek()
        givenSUT()
        whenGetMaxProfitCalled()
        thenProfitReturned(5)
    }
    
    func test_givenWeekIsTricky_sutReturns4() {
        givenTrickyWeek()
        givenSUT()
        whenGetMaxProfitCalled()
        thenProfitReturned(4)
    }

}

extension NewKataTests {
    
    func givenTrickyWeek() {
        inputPrices = [7,2,5,3,6,1]
    }
    
    func givenBadWeek() {
        inputPrices = [7,6,4,3,1]
    }
    
    func givenGoodWeek() {
        inputPrices = [7,1,5,3,6,4]
    }
    
    func givenSUT() {
        sut = DefaultStockTradingObject(prices: inputPrices)
    }
}

extension NewKataTests {
    func whenGetMaxProfitCalled() {
        returnedProfit = sut.getMaxProfit()
    }
}


extension NewKataTests {
    func thenProfitReturned(_ expectedProfit: Int) {
        XCTAssertEqual(returnedProfit, expectedProfit)
    }
}



protocol StockTradingObject {
    func getMaxProfit() -> Int
}

class DefaultStockTradingObject: StockTradingObject {
    
    let prices: [Int]
    
    init(prices: [Int]) {
        self.prices = prices
    }
    
    func getMaxProfit() -> Int {
        var maxProfit = Int.min
        var minVal = prices.first ?? 0
        
        for price in prices {
            minVal = min(minVal, price)
            maxProfit = max(maxProfit, price - minVal)
        }
        
        return maxProfit
    }
}

