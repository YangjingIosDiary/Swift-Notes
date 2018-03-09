//: Playground - noun: a place where people can play

import UIKit

//1)Array的初始化
var array1 = Array<Any>.init()
var array2: [Int] = [1,2]
var array3 = Array<Int>.init(repeating: 3, count: 5)
var array4 = array2 + array3
var array5 = [Int].init(repeating: 2, count: 2)
var array6 = [Int].init()

//2)属性/方法
let count = array4.count
let empty = array2.isEmpty
let min = array4.min()
let max = array4.max()
let filter = array4.filter { $0 <= 2}
print(filter)

let equal = array4.elementsEqual([1,2,3,3,3,3,3], by: { $0 == $1 })
print(equal)

let equal1 = array4.elementsEqual([1,2,3], by: { $0 == $1 })
print(equal1)

let start1 = array4.starts(with: [1, 2, 3], by: { $0 == $1 })
print(start1)

let sorted1 = array4.sorted(by: {$0 > $1})
print(sorted1)

let sorted2 = array4.sorted()
print(sorted2)

array4
let partition1 = array4.partition(by: {$0 < 2})//???
print(array4)


/*
forEach 只遍历元素，可对元素操作，不改变数组(闭包)返回值
map     遍历元素，可对元素操作，改变数组(闭包)返回值
*/

//3)增/删元素
array1.append(1)
array1.append("Hello")
array1 += [2, "World"]
array1.insert(0, at: 0)

array1.removeFirst()
array1.remove(at: 1)
array1
array1.removeAll()


//4)遍历
for item in array4 {
    print(item)
}

for (index, value) in array4.enumerated() {
    print("\(index): \(value)")
}

array4.forEach { (item) in
    print(item)
}


//5)Array 和 NSArray的区别
/*
Array 是数值类型数据；NAArray 是NSObject类型对象
 
Array 在处理赋值或者作为参数传递的时候会拷贝一个新值，对源数值不做影响
NSArray 在处理赋值或者作为参数传递的时候是传一个引用过去，新值与源数值指向同一个内存

*/

//6)
array4
array4.index(of: 2) //???
array4.index(after: 2) //???
array4.index(before: 2) //???

let sum = array4.map {
    $0 * $0
}




