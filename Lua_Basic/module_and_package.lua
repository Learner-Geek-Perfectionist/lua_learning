--Lua 模块与包

-- 模块类类似于一个封装库，从Lua5.1开始，Lua加入了标准的模块管理和机制
-- 可以把一些公用的代码放在一个文件里，以API接口的形式在其他地方调用，有利于代码的重用和降低代码耦合度
-- Lua的模块是由变量，函数等已知元素组成的table，因此创建一个模块很简单，就是创建一个table，然后把需要导出的常量，函数放入其中
-- 最后返回table

-- 加载module.lua
local my = require("mymodule") --my是一个table,必须加上local，否则插件报错。
print(my.constant)
my.func3()

-- require 加载机制

--对于自定义模块，模块文件不能随意放在任何目录，require函数有自己的加载文件机制
--它尝试从Lua文件或者C程序中加载模块

--Lua中使用LUA_PATH初始化package.path，require在package.path中搜索模块
--下面是我的输出：
--[[
/usr/local/share/lua/5.4/?.lua;
/usr/local/share/lua/5.4/?/init.lua;
/usr/local/lib/lua/5.4/?.lua;
/usr/local/lib/lua/5.4/?/init.lua;
/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;
./?.lua;
./?/init.lua
--]]

--它们都是目录，其中？是占位符，Lua在运行的时候会将其替换成实际要加载的模块名
--这说明，模块可以是名称为mymodule的文件夹下面的init.lua文件
--可以是mymodule.lua文件

--如果找到目标文件，则调用package.loadfile来加载模块，否则去找C库
--搜索C库的路径由package.cpath定义，而这个变量由LUA_CPATH定义

--C包
--Lua和C很容易结合，用C写Lua包
--与Lua包不同，C包在使用之前必须先加载再链接
--Lua中使用loadlib函数进行动态链接，这个函数有两个参数：库的绝对路径和相对路径
