import Foundation

var sumOfSquares = 0
var rawSumForTheSquareOfSums = 0

for i in 1...100 {
    rawSumForTheSquareOfSums += i
    sumOfSquares += i * i
    
}
var SquareOfSum = rawSumForTheSquareOfSums * rawSumForTheSquareOfSums
print(SquareOfSum-sumOfSquares)




