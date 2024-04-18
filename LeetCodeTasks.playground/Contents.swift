import UIKit


// Task 169. Majority Element (solved)
// https://leetcode.com/problems/majority-element/

//
//func findMajorityElement(_ nums: [Int]) -> Int {
//    let count = nums.count
//    var hashTable = [Int: Int]()
//    var majorityElement = 0
//
//    let uniqueNumbers = Set(nums)
//
//    uniqueNumbers.forEach { uniqueNumber in
//        hashTable[uniqueNumber] = 0
//    }
//
//    for element in nums {
//        if let count = hashTable[element] {
//            hashTable[element] = count + 1
//        } else {
//            hashTable[element] = 1
//        }
//    }
//
//    for value in hashTable.values {
//        if value > count / 2 {
//            if let key = hashTable.first(where: { $0.value == value})?.key {
//                majorityElement = key
//            }
//        }
//    }
//    return majorityElement
//}
//
//let array = [2,2,1,1,1,2,2]
//
//findMajorityElement(array)


// ----------------------------------------------------------------------------
// Second solution

//func findMajorityElement(_ nums: [Int]) -> Int {
//
//    var dict = [Int : Int]()
//    guard nums.count == 0 else { return 0 }
//    guard nums.count == 1 else { return nums[0] }
//
//    for num in nums {
//        if let value = dict[num] {
//            dict[num] = value + 1
//        } else {
//            dict[num] = 1
//        }
//    }
//
//    for key in dict.keys {
//        if let value = dict[key], value > nums.count / 2 {
//            return key
//        }
//    }
//
//    return 0
//}




// Task 229. Majority Element II
// https://leetcode.com/problems/majority-element-ii/description/

//func findMajorityElement(_ nums: [Int]) -> [Int] {
//    var dict = [Int : Int]()
//    var elements = [Int]()
//
//    for num in nums {
//        if let value = dict[num] {
//            dict[num] = value + 1
//        } else {
//            dict[num] = 1
//        }
//    }
//
//    for key in dict.keys {
//        if let value = dict[key], value > nums.count / 3 {
//            elements.append(key)
//        }
//    }
//    print(elements)
//    return elements
//}
//
//
//var nums = [3,2,3]
//findMajorityElement(nums)


// ----------------------------------------------------------------------------


//// 41. First Missing Positive
//// https://leetcode.com/problems/first-missing-positive/description/
//
//func findFirstPositive(_ nums: [Int]) -> Int {
//
//    for i in 1...nums.count {
//        for num in nums {
//            if i != num {
//                print("i \(i), num \(num)")
//            }
//        }
//    }
//    return 1
//}
//
//var nums = [3,4,-1,1]
//findFirstPositive(nums)


/// 349. Intersection of Two Arrays  (solved)
/// https://leetcode.com/problems/intersection-of-two-arrays/description/


//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//
//    var resultArray = [Int]()
//    var editedNums1 = Set(nums1)
//    var editedNums2 = Set(nums2)
//
//    for num1 in editedNums1 {
//        for num2 in editedNums2 {
//            if num1 == num2 {
//                resultArray.append(num1)
//            }
//        }
//    }
//
//    return Array(Set(resultArray))
//}
//
//
//var nums1 = [4,9,5]
//var nums2 = [9,4,9,8,4]
//intersection(nums1, nums2)

// ----------------------------------------------------------------------------

//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//
//    var resultArray = [Int]()
//    var editedNums1 = Set(nums1)
//    var editedNums2 = Set(nums2)
//
//    resultArray = editedNums1.filter { num1 in
//        editedNums2.contains(num1)
//    }
//    return resultArray
//}
//
//
//var nums1 = [4,9,5]
//var nums2 = [9,4,9,8,4]
//intersect(nums1, nums2)


/// 350. Intersection of Two Arrays II
/// https://leetcode.com/problems/intersection-of-two-arrays-ii/description/

//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//
//    var resultArray = [Int]()
//    var dict1 = [Int: Int]()
//    var dict2 = [Int: Int]()
//
//    nums1.map { num in
//        if let value = dict1[num] {
//            dict1[num] = value + 1
//        } else {
//            dict1[num] = 1
//        }
//    }
//
//    nums2.map { num in
//        if let value = dict2[num] {
//            dict2[num] = value + 1
//        } else {
//            dict2[num] = 1
//        }
//    }
//
//    for (key1, value1) in dict1 {
//        for (key2, value2) in dict2 {
//            if key1 == key2 {
//                for _ in 1...min(value1, value2) {
//                    resultArray.append(key1)
//                }
//            }
//        }
//    }
//
//    return resultArray
//}
//
//var nums1 = [1,2,2,1]
//var nums2 = [2,2]
//intersect(nums1, nums2)


/// 217. Contains Duplicate
/// https://leetcode.com/problems/contains-duplicate/description/


//func containsDuplicate(_ nums: [Int]) -> Bool {
//
//    var dict = [Int : Int]()
//    var answer: Bool = false
//
//    nums.map { num in
//        if let value = dict[num] {
//            dict[num] = value + 1
//        } else {
//            dict[num] = 1
//        }
//    }
//    print(dict)
//    dict.map { (key: Int, value: Int) in
//        if value > 1 {
//            print("value > 1")
//            return answer = true
//        }
//    }
//    print(answer)
//    return answer
//}
//
//var nums = [1,2,3,1]
//containsDuplicate(nums)

/// 217. Contains Duplicate II (not solved)
/// https://leetcode.com/problems/contains-duplicate-ii/description/


//func findMax(_ nums: [Int], _ k: Int) -> Int {
//
//    var dict = [Int : Int]()
//    var arr = [Int]()
//
//    nums.map { num in
//        if let value = dict[num] {
//            dict[num] = value + 1
//        } else {
//            dict[num] = 1
//        }
//    }
//
//    dict.map { (key, value) in
//        if value > 1 {
//            arr.append(key)
//        }
//        return arr
//    }
//
//    print(dict)
//    return Int()
//}
//
//var nums = [1,2,3,1]
//findMax(nums, 4)


/// 26. Remove Duplicates from Sorted Array (solved)
/// https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/


//func removeDuplicates(_nums: [Int]) -> Int {
//    var i = 1
//    for j in 1..<nums.count {
//        if nums[j] != nums[j - 1] {
//            nums[i] = nums[j]
//            i += 1
//        }
//    }
//    return i
//}
//
//var nums = [0,0,1,1,1,2,2,3,3,4]
//removeDuplicates(_nums: nums)


/// 283. Move Zeroes
/// https://leetcode.com/problems/move-zeroes/description/


//func moveZeroes(_ nums: [Int]) {
//    var nums = nums
//    var i = 0
//    var zeros = 0
//    while i < nums.count - zeros {
//        if nums[i] == 0 {
//            nums.remove(at: i)
//            nums.insert(0, at: nums.count)
//            zeros += 1
//        } else {
//            i += 1
//        }
//    }
//    print(nums)
//}
//
//var nums = [0,1,0,3,12]
//moveZeroes(nums)
