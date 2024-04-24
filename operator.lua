-- 算术运算符，关系运算符，逻辑运算符，其他运算符

--算术运算符

a = 21
b = 10
c = a + b
print("Line 1 - c 的值为 ", c)
c = a - b
print("Line 2 - c 的值为", c)
c = a * b
print("Line 3 - c 的值为", c)
c = a / b
print("Line 4 - c 的值为", c)
c = a % b
print("Line 5 - c 的值为", c)
c = a ^ 2
print("Line 6 - c 的值为 ", c)
c = -a
print("Line 7 -c 的值为", c)

-- Lua中，/ 用作除法运算，计算结果包含小数部分，// 用作整除运算，不包含小数部分

a = 5
b = 2

print("整除运算 a/b 的值为 ", a / b)
print("整除运算 - a//b ", a // b)

--关系运算符

a = 21
b = 10
if a == b then
  print("Line 1 - a 等于 b")
else
  print("Line 1 - a 不等于 b")
end

if
    a ~= b -- ~=表示不等于
then
  print("Line 2 - a 不等于 b")
else
  print("Line 2 - a 等于 b")
end

if a < b then
  print("Line 3 - a 小于 b")
else
  print("Line 3 - a 大于 b")
end

if a < b then
  print("line 4 - a 大于 b")
else
  print("Line 4 - a 小于 b")
end

a = 5
b = 20
if a <= b then
  print("Line 5 - b 小于等于 a")
end

if b >= a then
  print("line 6 - a 小于等于 b")
end

--逻辑运算符

-- and  or not(非)

a = true
b = true

if a and b then
  print("a and b - 条件为true")
end

if a or b then
  print("a or b - 条件为true")
end

a = false
b = false
if a and b then
  print("a and b - 条件为true")
else
  print("a and b - 条件为 fasle")
end

if not (a or b) then
  print("not (a or b) - 条件为true")
else
  print("not (a or b) - 的条件为false")
end

-- 其他运算符
--   .. 连接两个字符串
--   #  返回字符串或列表的长度

a = "Hello"
b = "World"

print("连接字符串 a 和 b ", a .. b)
print("b 字符串长度", #b)
print("字符串 Test 长度 ", #"Test")
print("菜鸟教程网址长度", #"www.runoob.com")

-- 运算符优先级
-- 从高到低的顺序

-- ^
-- not -(unary)
-- * / %
-- + -
-- ..
--  < > <= >= ~= ==
--  and
--  or

-- 除了 ^ 和 .. 外所有的二元运算符都是左连接

a = 20
b = 10
c = 15
d = 5

e = (a + b) * c / d   -- ( 30 * 15 ) / 5
print("(a+b)*c/d 运算值为 ", e)
e = ((a + b) * c) / d -- ( 30 * 15 ) / 5
print("((a+b)*c)/d 运算值为  ", e)
e = (a + b) * (c / d) -- ( 30 )*( 15 / 5 )
print("(a+b) * (c/d) 运算值为 ", e)
e = a + (b * c) / d   -- 20 + ( 150 / 5 )
print("a+(b*c)/d 运算值为 ", e)
