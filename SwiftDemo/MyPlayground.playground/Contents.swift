//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var myVarible = 10
myVarible = 30
print(myVarible)

let double:Double = 10.00
let int:Int = 20

//类型别名 将Int取名为NSInterge
typealias NSInterge = Int
//变量 名字：类型 = 10
var h:NSInterge = 10
h = 30

//Bool类型
typealias isBool = Bool
let bool1:isBool = true; let bool2:Bool = true



//字符串类型转换
let string = "I have apple and iphone"
var one = 10
//String(one) 将Int类型转换成字符串类型
var newString = string + "yes" + String(one)
newString += "!"

//字符串格式化
let n = 10
let s = 20
let wom = "I have \(n)apple and \(s+n)iphone"

/*------------------------数组*/
//声明一个空数组
let array  = []
let emptyArray : Array = [String]()
let ee : Array = [Int]()

//声明一个空的数组，固定了值的类型
let empdArray = [String]()

var newArray = ["苹果","想家","电视剧发货"]
//在结尾在拼接上一个元素
newArray .append("dhfjd")
print(newArray)
//在索引为0的地方插入元素
newArray .insert("aiya", atIndex: 0)

newArray += ["sdaf","hhuhu"]
newArray += ["睡觉"]

//数组容量
print(newArray.capacity)
//数组元素数量
print(newArray.count)
//数组是否为空，false不为空，true为空
print(newArray.isEmpty)

//修改下标为0的元素
newArray[0] = "香蕉"
print(newArray)

//修改数组中下标为4-7的元素
newArray[4..<7] = ["4","5","6","7"]
print(newArray)

//删除最后的元素
newArray.removeLast()
print(newArray)

newArray.removeAtIndex(2)
print(newArray)

//从第一个元素开始删除，一直到下标为2的结束
newArray.removeFirst(2)

//数组遍历
for item in newArray
{
    print(item)
}

//第二种遍历，有问题
//for (index,value) in enum newArray
//{
//    print("item:\(index):\(value)")
//}

/*------------------------字典*/
//声明一个空的字典
let dic1 = [:]
//固定key和value的类型
let dic2 = Dictionary<String,Float>()

var newDic = ["newKey":"newValue","cc":"ss"]
//根据key改value的内容
newDic["newKey"] = "sdf"
print(newDic)

/*
//删除
newDic["cc"] = nil
print(newDic)
//根据key删除
newDic.removeValueForKey("newKey")
print(newDic)
*/

let keyArray  = Array(newDic.keys)
print(keyArray)

let valueArray = Array(newDic.values)


/*----------------元组*/
let (x,y) = (1,2)//定义简单元组
print("this is x:\(x) and y:\(y)")

//元组可以放任何类型的值
//将元组赋值给一个常量
//叫直接访问
let http404Error = (404,"Not Found","sss")
print(http404Error)

//将元组的内容设置key,通过key去访问
let (code,msg,_) = http404Error
print("code is \(code) and msg is \(msg)")
//仅需要元组中的个别值，可以通过_下划线来忽略不需要的值
let (just,_,_) = http404Error
print("just is \(just)")

//通过序号访问元组中的值
print("the http.0的内容:\(http404Error.0)")

//元组的创建
let newTuple = (code:129,msg:"syy")
print(newTuple)
print(newTuple.code)
print(newTuple.1)




/*--------------option 可选类型*/
let option:String? = "124"
let newOption = option?.hashValue



