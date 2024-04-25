-- 文件名为module.lua
-- 定义一个名为module的模块

mymodule = {}

--定义一个常量
mymodule.constant = "这是一个常量"

--定义一个函数
function mymodule.func1()
	io.write("这是一个公有函数!\n")
end

local function func2()
	print("这是一个私有函数")
end

function mymodule.func3()
	func2()
end

return mymodule --本质上是返回table
--上述结构就是一个table，调用table中的函数和调用table中的元素一样
--func2()声明为局部变量，这是一个私有函数，不能从外部访问这个函数，必须通过模块里面的公有函数来调用。

-- require函数
-- Lua使用require函数来加载模块，类似于C++的#include
