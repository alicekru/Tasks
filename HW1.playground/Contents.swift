import UIKit
//MARK 1: Factorial

func factorialRecursion(num: Int) -> Int {
    if num == 0 {
        return 1
    } else {
        return num * factorialRecursion(num: num - 1)
    }
}

let x = 0
let result1 = factorialRecursion(num: x)
print("The factorial of \(x) is \(result1)")



func factorialIteration(_ n: Int) -> Int {
    func iter(product: Int, counter: Int) -> Int {
        if counter > n {
            return product
        }
        return iter(product: counter * product, counter: counter + 1)
    }

    return iter(product: 1, counter: 1)
}


let y = 7
let result2 = factorialIteration(y)
print("The factorial of \(y) is \(result2)")


// MARK 2: FIBONACI

//extension Array where Element: BinaryInteger {
//
//    private mutating func fibonacci1(index: Int) {
//        if index >= count {
//            return
//        }
//        self[index] = self[index-1] + self[index-2]
//        return fibonacci1(index: index+1)
//    }
//
//    init(fibonacci count: Int) {
//        self = [Element]()
//        if count < 0 {
//            self = [Element]()
//        }
//        self = [Element](repeating: 1, count: count)
//        fibonacci1(index: 2)
//    }
//
//    static func calculate(fibonacciAt index: Int) -> Element? {
//
//        if index < 0 {
//            return nil
//        }
//
//        if index < 2 {
//            return 1
//        }
//
//        func calc(a: Element, b: Element, index: Int) -> Element {
//            if index == 1 {
//                return b
//            }
//            return calc(a: b, b: a+b, index: index-1)
//        }
//
//        return calc(a: 1, b: 1, index: index)
//    }
//}
//let fibonacciSequence = [Int](fibonacci: 17)
//print(fibonacciSequence)
//


func fibonacci2(n: Int) -> [Int] {

    assert(n > 1)

    var array = [0, 1]

    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

print(fibonacci2(n: 10))


// MARK 3: FIND N

//func piToN(to n: Int) -> Double {
//    let factor = (pow(10, n) as NSDecimalNumber).doubleValue
//    let piResult: Double = Double(round(Double.pi * factor) / factor)
//    if(n < 1 || n > 14){
//        print("Please input range from 1 to 14")
//    }else{
//        print(piResult)
//    }
//    return piResult
//}
//piToN(to: 10)

func findNValue(someN: Int) -> Int {
    var pi = Double.pi
    var count = 0
    var result = 0

    while count != someN {
        result = Int(pi.truncatingRemainder(dividingBy: 10))
        pi *= 10
        count += 1
    }

    return result
}
print(findNValue(someN: 7))

    
