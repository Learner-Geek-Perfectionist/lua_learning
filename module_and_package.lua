--Lua 模块与包

-- 模块类类似于一个封装库，从Lua5.1开始，Lua加入了标准的模块管理和机制
-- 可以把一些公用的代码放在一个文件里，以API接口的形式在其他地方调用，有利于代码的重用和降低代码耦合度
-- Lua的模块是由变量，函数等已知元素组成的table，因此创建一个模块很简单，就是创建一个table，然后把需要导出的常量，函数放入其中
-- 最后返回table

-- 加载module.lua
local my = require("mymodule") --my是一个table,必须加上local，否则插件报错。
print(my.constant)
