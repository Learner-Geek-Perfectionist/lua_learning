-- 在Lua中，没有专门的数组类型，而是使用一种被称为”table“的数据结构来实现数组的功能

--数组的索引从1开始，你也可以指定从0开始

--一维数组

myarray = { 10, 20, 30, 40, 50 }

print(myarray[1]) -- 输出10
print(myarray[3]) -- 输出30

myarray = { 10, 20, 30, 40, 50 }

length = #myarray
print(length)
print("\n")
myarray = { 10, 20, 30, 40, 50 }

for i = 1, #myarray do
	print(myarray[i])
end

array = { "Lua", "Tutorial" }

print("\n")
for i = 0, 2 do
	print(array[i])
end

print("\n")
for i = -2, 2 do
	array[i] = i * 2
end

print("\n")
for i = -2, 2 do
	print(array[i])
end

print("\n")
--修改数组的元素

myarray[2] = 25

for i = 1, #myarray do
	print(myarray[i])
end

print("\n")
--向数组中添加元素

myarray[#myarray + 1] = 60

for i = 1, #myarray do
	print(myarray[i])
end

print("\n")

table.remove(myarray, 3)
for i = 1, #myarray do
	print(myarray[i])
end

print("\n")

two_dimensional_array = {}

for i = 1, 3 do
	two_dimensional_array[i] = {}
	for j = 1, 3 do
		two_dimensional_array[i][j] = i * j
	end
end

for i = 1, 3 do
	for j = 1, 3 do
		print(two_dimensional_array[i][j])
	end
end
