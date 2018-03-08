//: Playground - noun: a place where people can play

import UIKit

//1)、String的初始化
var str1 = "Hello";
var str2 = String.init()
var str3 = String.init(format: "%.2d", 1)
var str4 = String.init(format: "%@", "World")
var str5 = "\(str1), World"


//2)、String长度
let str1Length = str1.count
let strLength = str1.lengthOfBytes(using: String.Encoding.utf8)
let strLength2 = strlen(str1)
let strLength3 = (str1 as NSString).length


//3)、String拼接
var str6 = str1 + "，World"
var str7 = str1.appending(", World")
var str8 = "\(str1)， World"


//4)、String的截取
let index = str6.startIndex.encodedOffset.advanced(by: 5) //str6 从前往后下标偏移5的位置
var str9 = str6.prefix(index)  //str6 截取下标到index的前部分（不包含index）
var str10 = str6.suffix(index) //str6 截取下标到index的后部分（不包含index）

let index2 = str6.endIndex.encodedOffset.advanced(by: -6) //str6 从后往前下标偏移-6的位置
var str11 = str6.prefix(index2) //str6 截取下标到index2的前部分（包含index）
var str12 = str6.suffix(index2) //str6 截取下标到index2的后部分（包含index）

var str13 = str6.prefix(5) //str6 从前往后长度为5的部分
var str14 = str6.suffix(5) //str6 从后往前长度为5的部分


//5)、数值型字符串转化为数值
let str15 = "123"
let int1 = Int(str15)
let int2 = Int.init(str15)
let int3 = (str15 as NSString).integerValue

let str16 = "1.23"
let float1 = Float(str16)
let float2 = Float.init(str16)
let float3 = (str15 as NSString).floatValue


//6)、String的替换、插入
let str17 = str6.replacingOccurrences(of: "World", with: "Yang")
//？？？- swift 4.0 插入用不了了？


//7)、String的遍历
for char in str6 {
    print(char)
}

for index in str6.indices.indices {
    print(str6[index])
}


//8)、String的UTF8编码???
let data1 = str6.data(using: String.Encoding.utf8)
var str18 = String.init(data: data1!, encoding: String.Encoding.utf8)

var str19 = str6.utf8


//9)、NSString和String的相互转化
var str20: NSString = NSString.init(string: str6)
var str22 = String.init(str20)

