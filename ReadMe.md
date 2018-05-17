# PicoBoard 传感器接口

接收到9个16进制数据 分别是头部和8个传感器的模拟量，如下

//Received Header
【f804】 877f 8f7f 977f 9f7f a77f ab74 b014 b800

//Read/Report channel 0 (Resistance-D)
f804 【8000】 8f7f 977f 9f7f a77f ac00 b028 b824

//Read/Report Channel 1 (Resistance-C)
f804 877f 【8800】 977f 9f7f a77f ac04 b02c b824

//Read/Report Channel 2 (Resistance-B)
f804 877f 8f7f 【9000】 9f7f a77f ab7c b014 b800

//Read/Report Channel 3 (Button)
f804 877f 8f7f 977f 【9800】 a77f ab78 b00c b800

//Read/Report Channel 4(Resistance-A)
f804 877f 8f4c 977f 9f7f 【a000】 ab7c b014 b800

//Read/Report Channel 5(LIGHT)
f804 877f 8f7f 977f 9f7f a77f 【a904】 b014 b800
f804 877f 8f7f 977f 9f7f a77f 【af7c】 b00c b800

//Read/Report Channel 6(Sound)
f804 877f 【8f2c】 977f 9f7f a77f ab64 【b01c】 b800

//Read/Report Channel 7(Slider)
f804 877f 8f7f 977f 9f7f a77f ab74 b014 【bf7f】