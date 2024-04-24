-- 在Lua中，字符串可以用三种方式表示

-- 1.单引号的字符串

local str1 = "This is a string"
local str2 = "This is also a string"

-- 2.双引号的字符串
local str = "Hello, "
str = str .. "World!"

print(str)
-- 3.[[ ]]之间的字符串

local multilineString = [[
This is a multiline string
It can contain multiline lines of text
No need for escape characters
]]

print(multilineString)

html = [[

<html>
<head></head>
<body>
    <a href = "http://www.runoob.com/"> 菜鸟教程</a>
</body>
</html>
]]

print(html)

print("2" + 6)
print("2" + "6")
print("2+6")
print("-2e2" * "6")
print("error" .. 1) -- 字符串连接使用 ..
print("a" .. "b")
print("157" .. "428")

-- 字符串长度计算
-- 在Lua中，使用string.len或者utf8.len计算字符串长度，中文用utf8.len，string计算包含ASCII字符串的长度

local mystring = "Hello, RUNOOB!"

local lenth = string.len(mystring)

print(lenth)
local utf8 = require("utf8") -- 类似于C语言的 #include
local Mystring = "Hello , 世界"
local length1 = utf8.len(Mystring)
print(length1)

-- 字符串截取
-- string.sub(s,i,j)
-- s：操作的字符串
-- i：开始截取的位置
-- j：截取字符串的长度，默认为-1，即最后一个字符

local sourcestr = "prefix--runoobgoogletaovao--suffix"
print("\n原始字符串", string.format("%q", sourcestr))

local firs_sub = string.sub(sourcestr, 4, 15)
print("\n第一次截取", string.format("%q", firs_sub))

local second_sub = string.sub(sourcestr, 1, 8)
print("\n第二次截取", string.format("%q", second_sub))

--截取最后10个
local third_sub = string.sub(sourcestr, -10)
print("\n第三次截取", string.format("%q", third_sub))

--越界索引，输出原始字符串
local fourth_sub = string.sub(sourcestr, -100)
print("\n第四次截取", string.format("%q", fourth_sub))

-- 字符串大小写转换

string1 = "Lua"
print(string.upper(string1))
print(string.lower(string1))

--字符串查找与反转
--string.find(str,substr,i)
--str：文本字符串
--sustr：目标字符串
--i：指定搜索的起始位置
--返回文本串在目标串的起始和结束位置
String = "Lua Tutorial"
print(string.find(String, "Tutorial"))
reversestring = string.reverse(String)
print("新字符串为", reversestring)

--字符串格式化

string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
require("string")
--字符串基本格式化
print(string.format("基本格式化 %s %s", string1, string2))

--日期格式化
date, month, year = 2, 1, 2014

print(string.format("日期格式化 %02d/%02d/%04d", date, month, year))

print(string.format("%.4f", 1 / 3))
