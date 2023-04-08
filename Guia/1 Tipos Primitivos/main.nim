# Tipos primitivos

var num1: int   = 0
var nim2: int8  = -128
var nim3: int16 = 12314
var nim4: int32 = -124
var nim5: int64 = 1235
    
var unim1: uint   = 0
var unim2: uint8  = 255
var unim3: uint16 = 1423
var unim4: uint32 = 4123
var unim5: uint64 = 123
    
var fnum1: float   = 2.71
var fnum2: float32 = 3.1415
var fnum3: float64 = 14.352

# Conversão

var float2int   = int(3.14) 
var float82int  = int8(1.41)
var float162int = int16(2.71)
var float232int = int32(2.23)  
var float264int = int64(0.33)
var uint2int    = uint(364)
var uint82int   = uint8(132)
var uint162int  = uint16(877)
var uint322int  = uint32(32)
var uint642int  = uint64(64)
var int2float   = float(53) 
var int322float = float32(42)
var int642float = float64(75)

# String

var letra: char = 'a'
var palavra: string = "Tundra"
var int2str: string = $123
var jogo: string = "Touhou " & "7"