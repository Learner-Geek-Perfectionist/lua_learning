-- 在lua中，函数被看作"第一类值"，函数可以存储在变量里

function factorial1(n)
	if n == 0 then
		return 1
	else
		return n * factorial1(n - 1)
	end
end

print(factorial1(5))

factorial2 = factorial1

print(factorial2(5))

-- function 可以通过匿名函数(C++的lambda表达式)的方式通过参数传递

function testFun(tab, fun)
	for k, v in pairs(tab) do
		print(fun(k, v))
	end
end

local tab = { key1 = "val1", key2 = "val2" }
testFun(tab, function(key, val)
	return key .. "=" .. val
end)

function max(num1, num2)
	local result
	if num1 > num2 then
		result = num1
	else
		result = num2
	end
	return result
end

print("两个值中较大的为", max(10, 4))
print("两个值中较大的为", max(3, 9))

--Lua 中我们可以将函数作为参数传递给函数，类似于lambda表达式

myprint = function(para)
	print("这是打印函数 - ##", para, "##")
end

function add(num1, num2, functionprint)
	result = num1 + num2
	functionprint(result)
end

myprint(10)
add(2, 5, myprint)

-- string.find函数返回匹配串“开始和结束的下标”
s, e = string.find("www.runoob.com", "runoob")
print(s, e)

--在Lua函数中，return列表即可返回多个值

-- ipairs用于遍历数组，保证有序
-- pairs用于遍历所有元素，包括数组和哈希部分，不保证有序
function maximum(a)
	local mi = 1
	local m = a[mi]
	for i, val in ipairs(a) do
		if val > m then
			mi = i
			m = val
		end
	end
	return m, mi
end

print(maximum({ 8, 10, 23, 12, 5 }))

-- 可变参数，Lua参数接受可变数量的参数，和C语言类似， 可以在函数的形参中使用三个点...表示函数有可变的参数

function add(...)
	local s = 0
	for i, v in ipairs({ ... }) do --> {...}表示一个变长参数的数组
		s = s + v
	end
	return s
end

print(add(3, 4, 5, 6, 7))

--计算平均值

function average(...)
	result = 0
	local arg = { ... }
	for i, v in ipairs(arg) do
		result = result + v
	end
	print("总共传入" .. #arg .. "个数")
	return result / #arg
end

print("平均值为", average(10, 5, 3, 4, 5, 6))

--使用select("#",...)获取可变参数的数量
function average(...)
	result = 0
	local arg = { ... }
	for i, v in ipairs(arg) do
		result = result + v
	end
	print("总共传入" .. select("#", ...) .. "个数")
end

-- 固定参数和混合参数一起使用，固定参数必须在可变参数之前：

function fwrite(fmt, ...)
	return io.write(string.format(fmt, ...)) -- io.write类似于print，标准输出，但是不会自动输出空格
end

fwrite("runoob\n")
fwrite("%d%d\n", 1, 2)

-- 如果可变参数{...}包含nil,可以用select访问可变参数

-- select("#",...)返回可变参数的长度
-- select(n,...) 返回从n 开始到结束的可变参数列表

function f(...)
	a = select(3, ...)
	print(a)
	print(select(3, ...))
end

f(0, 1, 2, 3, 4, 5)

do
	function foo(...)
		local cnt = select("#", ...)
		for i = 1, select("#", ...) do
			local arg = select(i, ...)
			print("arg", arg)
		end
		print(cnt)
	end

	foo(1, 2, 3, 4)
end
