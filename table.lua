--[[

Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。
在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。

]]

-- 在Lua中，table的创建是通过“构造表达式”来完成的，最简单的构造表达式是{}
-- {}用来创建一个空表，也可以在表里添加一些数据，直接初始化

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
