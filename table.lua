--[[

Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。
在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。

]]

-- 在Lua中，table的创建是通过“构造表达式”来完成的，最简单的构造表达式是{}
-- {}用来创建一个空表，也可以在表里添加一些数据，直接初始化

-- table是Lua的是一种数据结构，可以是：数组、字典
-- table的大小是不固定的，可以根据自己的需要扩容
-- Lua通过表来解决模块(module)，包(package)和对象(object)的。
-- 比如，string.format表示使用format来索引table string

local tbl1 = {}

local tbl2 = { "apple", "pear", "orange", "grape" }

local a = {}
a["key"] = "value"
local key = 10
a[key] = 22
a[key] = a[key] + 11

for k, v in pairs(a) do
	print(k .. ":" .. v)
end

-- lua的索引从1开始

for key, val in pairs(tbl2) do
	print("key", key)
end

a3 = {}

for i = 1, 10 do
	a3[i] = i
end

a3["key"] = "val"
print(a3["key"])
print(a3["none"])

--Table操作

--Table连接

fruits = { "banana", "orange", "apple" }
-- 返回table连接后的字符串
print("连接后的字符串", table.concat(fruits))

-- 指定连接字符
print("连接后的字符串", table.concat(fruits, ","))

-- 指定suoyin连接table
print("连接后的字符串", table.concat(fruits, ",", 2, 3))

--插入和移除
-- table.remove(table,i)
-- 返回位置i的元素，后面的元素向前移动
-- 默认删除最后一个元素

fruits = { "banana", "orange", "apple" }

--在末尾插入
table.insert(fruits, "mango")
print("索引为4的元素为", fruits[4])

--在索引为2的键插入
table.insert(fruits, 2, "grape2")
print("索引为2的元素", fruits[2])

print("最后一个元素为", fruits[5])

table.remove(fruits)
print("移除的最后一个元素为", fruits[5])
