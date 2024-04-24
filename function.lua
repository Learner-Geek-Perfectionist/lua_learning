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
