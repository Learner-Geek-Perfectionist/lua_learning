-- iteraotr是一种对象，用来遍历标准模板库容器中的元素，每个迭代器代表容器元素的地址
-- 在Lua中，迭代器是一种支持指针类型的结构，它能遍历集合的每一个元素

-- 泛型 for 迭代器
-- 它有三个值：迭代函数，状态常量，控制变量

array = { "Google", "Runoob" }
for k, v in ipairs(array) do
	print(k, v)
end

-- k,v是变量列表，ipairs(array) 是表达式列表

-- 泛型for的执行过程：
-- 1.先计算表达式列表，它应该返回泛型for需要的三个值：迭代函数，不变状态(常量，不能被修改)，控制变量
-- 这与多赋值变量一样，如果表达式的结果个数不足三个，自动用nil填充，如果有多余的变量，则被忽略。
-- 2.将不变状态和控制变量作为参数传递给迭代函数
-- 3.将迭代器函数返回的值赋值给变量列表k,v
-- 4.如果返回的第一个值为nil，说明table为空，循环结束
-- 否则，继续执行循环。

-- 无状态迭代器
-- 无状态迭代器指不保留任何状态迭代器，能避免创建闭包的额外代价
-- 无状态迭代器的最简单例子就是ipairs

-- 定义 square 函数，它接受两个参数：iteratorMaxCount（迭代最大次数）和 currentNumber（当前数字）
function square(k, v)
	-- 如果当前数字小于迭代最大次数，则执行以下操作
	if v < k then
		v = v + 1 -- 将当前数字增加 1
		return v, v * v -- 返回当前数字及其平方
	end
	-- 如果当前数字不小于迭代最大次数，则函数将不返回任何值，迭代将结束
end

-- 使用 square 函数在 for 循环中迭代
-- 第一个参数是 square 函数本身
-- 第二个参数是迭代最大次数，这里是 3
-- 第三个参数是迭代的起始数字，这里是 0
for i, n in square, 3, 0 do -- 参数的顺序：迭代函数，不变状态，控制变量
	print(i, n) -- 打印出当前的数字 i 及其平方 n
end

-- 多状态迭代器
-- 很多情况下，迭代器需要保存多个状态信息，而不是简单的不变状态和控制变量
-- 最简单的方法是使用闭包，或者将信息封装到table中，table作为迭代器的不变状态

function elementInterator(collection)
	local index = 0
	local cnt = #collection
	--闭包函数
	return function()
		index = index + 1
		if index <= cnt then
			return collection[index]
		end
	end
end

for element in elementInterator(array) do
	print(element)
end
