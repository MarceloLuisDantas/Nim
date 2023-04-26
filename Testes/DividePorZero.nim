from std/os import execShellCmd
import strutils

proc divide(x, y: float) =
    if y == 0 :
        discard execShellCmd("firefox https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    else :
        echo "Resultado: ", x / y

stdout.write "Numerador: "
var x = stdin.readLine.parseFloat

stdout.write "Denominador: "
var y = stdin.readLine.parseFloat

divide(x, y)