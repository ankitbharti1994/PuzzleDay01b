import Foundation

public struct Utility {
    
    /// It wants you to consider the digit halfway around the circular list. That is, if your list contains 10 items, only include a digit in your sum if the digit 10/2 = 5 steps forward matches it. Fortunately, your list has an even number of elements. and in the end sum up all the result. count of the numbers should be even
    ///
    /// - Parameter input: pass the string which will only contain the Numeric character
    /// - Returns: return the result in Int format
    public static func sumOfForwardMatch(input: String) -> Int {
        
        let numbers: [Int] = input.map {
            Int("\($0)")!
        }
        
        let mappingIndex = numbers.count / 2
        
        let circularNumbers = numbers + numbers
        var mappedNumbers = [Int]()
        
        for (index, number) in circularNumbers.enumerated() {
            if index > numbers.count - 1 {
                break
            }else {
                let mappingNumber = circularNumbers[index + mappingIndex]
                if number == mappingNumber {
                    mappedNumbers.append(number)
                }
            }
        }
        
        let result = mappedNumbers.reduce(0) {
            return $0 + $1
        }
        
        return result
    }
}
