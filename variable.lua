--lua有三种变量: 全局变量，局部变量，表中的域

a = 5       -- 全局变量
local b = 5 -- 局部变量

function joke()
  c = 5      -- 全局变量
  local d = 6 -- 局部变量
end

joke()
print(c, d) --> 5 nil

do
  local a = 6 -- 局部变量
  b = 6      -- 对局部变量重新赋值
  print(a, b) --> 6 6
end

print(a, b) --> 5 6

-- 赋值是改变一个变量的值和改变表域的最基本的方法。
a = "hello" .. "world"
t = { n = 0 } -- 定义表 t 并初始化键 n 的值为 0
t.n = t.n + 1 --将表 t 中的键 n 对应的值增加 1。

-- Lua 可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，赋值语句右边的值会依次赋给左边的变量。
--a, b = 10, 2 * x

-- 遇到赋值语句Lua会先计算右边所有的值然后再执行赋值操作，所以我们可以这样进行交换变量的值：x,y=y,x

--a[i], a[j] = a[j], a[i] -- swap 'a[i]' for 'a[j]'
y, x = x, y

-- 当变量个数和值的个数不一致时，Lua会一直以变量个数为基础采取以下策略：
a, b, c = 0, 1
print(a, b, c)             --> 0   1   nil

a, b = a + 1, b + 1, b + 2 -- value of b+2 is ignored
print(a, b)                --> 1   2

a, b, c = 0
print(a, b, c) --> 0   nil   nil

a, b, c = 0, 0, 0
print(a, b, c) --> 0   0   0

-- 多值赋值经常用来交换变量，或将函数调用返回给变量：
--a, b = f()

--f()返回两个值，第一个赋给a，第二个赋给b。

--应该尽可能的使用局部变量，有两个好处：

--1. 避免命名冲突。
--2. 访问局部变量的速度比全局变量更快。
