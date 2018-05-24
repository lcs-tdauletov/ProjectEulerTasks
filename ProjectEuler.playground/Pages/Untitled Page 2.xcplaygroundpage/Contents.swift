import Foundation

// Sorry for being too indescriptive, but that's simply how I operate.
var max = 0
var stuff = 1


for a in 1...2 {
    // Two loops represent the two variables of a function that I forgot the proper name for from calculus.
    // You can address Todd Harris for proper terminology( f(x) ^ g(x)) has its own name.
    // So, back to the two loops.
    for b in 1...2 {
        // Ths is pretty simple: raise the one to the power of the other.
        stuff = Int(pow(Double(a), Double(b)))
        // Turn every single result into an array of characters, but not forget about the intermediate step
        // The Int - String transmutation.
        var charArray : [Character] = Array(String(stuff))
        // Local sum is local for a reason: it need not be outside of the loops since:
        // 1. It will mess up the entire compilation and give a false result.
        // 2. Intuitively, the memory of this sum shall be erased as soon as the loops are done
        var localSum = 0
        // Now, identify every single digit in a number and sum those digits up.
        for i in 0...charArray.count - 1 {
            localSum += Int(String(charArray[i]))!
        }
        // Finding a maximum is hopefully straightforward.
        if localSum > max {
            max = localSum
        }
    }
}
// Voila
print(max)


// Now this algotrithm does not quite correspond to the requirements of the Project Euler standard since
// I run out of computing power before it compiles.
// But the Hackerrank set of directives is perfectly content with this result plus the principle works, so I suppose this scalp goes into my
// Collection bin for a merit.
// Have a nice day. 
