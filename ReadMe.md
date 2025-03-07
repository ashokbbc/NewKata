Stock Trader Coding Kata - Swift

Introduction: Best Time to Buy and Sell Stock

Our goal is to analyze stock prices and find the best way to buy, sell, or track stock prices based on different scenarios.




----------
Problem Statements


1️⃣ Max Profit with One Transaction
Problem:
You are given an array `prices` where `prices[i]` is the price of a given stock on the `i-th` day.
You want to maximize your profit by choosing one day to buy a stock and a different day in the future to sell that stock.
Return the maximum profit you can achieve from this transaction.
If you cannot achieve any profit, return `0`.
Example 1:

    Input: prices = [7,1,5,3,6,4]
    Output: 5
    Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6 - 1 = 5.

Example 2:

    Input: prices = [7,6,4,3,1]
    Output: 0
    Explanation: No transactions can be made, so max profit = 0.
----------



2️⃣ Count Profitable Days
Problem:
You are given an array `prices` where `prices[i]` is the stock price on the `i-th` day.
Return the number of days when the stock price was higher than the previous day.
Example 1:

    Input: prices = [1, 2, 3, 1, 5, 6]
    Output: 4
    Explanation:
    - Day 2 (2 > 1) ✅
    - Day 3 (3 > 2) ✅
    - Day 5 (5 > 1) ✅
    - Day 6 (6 > 5) ✅
    Total profitable days = 4.

Example 2:

    Input: prices = [5, 4, 3, 2, 1]
    Output: 0
    Explanation: No day has a higher price than the previous day.
----------



3️⃣ Find the Best Day to Buy
Problem:
You are given an array `prices` where `prices[i]` is the stock price on the `i-th` day.
Find the earliest day where the stock price was the lowest.
Return the index (1-based day number) of that day.
Example 1:

    Input: prices = [3, 8, 2, 5, 1, 7]
    Output: 5
    Explanation: The lowest price is `1`, which occurs on day **5**.

Example 2:

    Input: prices = [10, 9, 8, 7, 6, 5]
    Output: 6
    Explanation: The lowest price is `5`, which occurs on day **6**.
----------



4️⃣ Buy, Sell, or Hold Strategy
Problem:
You are given an array `prices` where `prices[i]` is the stock price on the `i-th` day.
For each day:

- Print `"Buy"` if the price is lower than the next day.
- Print `"Sell"` if the price is higher than the next day.
- Print `"Hold"` if it is the last day or the price remains the same.

Example 1:

    Input: prices = [7, 1, 5, 3, 6, 4]
    Output:
    Sell (price = 7)
    Buy (price = 1)
    Sell (price = 5)
    Buy (price = 3)
    Sell (price = 6)
    Hold (price = 4)

Example 2:

    Input: prices = [3, 3, 3, 3]
    Output:
    Hold (price = 3)
    Hold (price = 3)
    Hold (price = 3)
    Hold (price = 3)
----------
