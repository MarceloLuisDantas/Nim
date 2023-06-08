

import std/options

func getItem(lista: seq[int], indice: int): Option[int] =
    if (indice >= lista.len) :
        return none(int)
    return some(lista[indice])

if (let valor = @[1, 2, 3, 4, 5].getItem(3); valor.isSome) :
    echo "Valor = ", valor.get # 4

if (let valor2 = @[1, 2, 3, 4, 5].getItem(5); valor2.isNone) :
    echo "Index out of bounds"


# Results ------------------------------------------------------------------

import results

type Resultado = Result[int, string]
func getItemResults(lista: seq[int], indice: int): Resultado =
    if (indice >= lista.len) :
        return Resultado.err "Index out of bounds"
    return Resultado.ok lista[indice]

if (let valor = @[1, 2, 3, 4, 5].getItemResults(3); valor.isOk) :
    echo "Valor = ", valor.value # 4

if (let valor = @[1, 2, 3, 4, 5].getItemResults(5); valor.isErr) :
    echo valor.error

func errorValue(res: Resultado): (string, int) =
    return case res.isOk :
        of true : ("", res.value)
        of false : (res.error, 0)

let (err, val) = @[1, 2, 3, 4, 5].getItemResults(7).errorValue

if err != "" : 
    echo err
else : 
    echo val

