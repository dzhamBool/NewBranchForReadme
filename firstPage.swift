import UIKit

print("Hello Git")

// Задача: расчитать время, затраченное на поездку между остановками
var newTramLine = ["Аллея Яшина": 0,
                   "Бронницкий переулок": 5,
                   "Воронежский проезд": 9,
                   "Гродненская улица": 15,
                   "Дунайский проспект": 22,
                   "Елецкое шоссе": 27,
                   "Кольцо": 33]

// переменные для проверки фцнуций
var a = "Елецкое шоссе"
var b = "Бронницкий переулок"

// Решение № 2 с использованием guard
func timeCalculationWitGuard(firstStation: String, endStation: String) -> Int {
    var result = 0
    if !newTramLine.keys.contains(firstStation) {
        print("Ssorry, but the departure station was not found ")
    }
    else if !newTramLine.keys.contains(endStation) {
        print("Sorry, but the destination station was not found")
    }
    guard let f = newTramLine[firstStation] else {return 0}
    guard let e = newTramLine[endStation] else {return 0}
    result = e - f
    if result < 0 {
        result *= -1
    }
    print(result)
    return result
}
// Проверка  функции timeCalculationWitGuard
timeCalculationWitGuard(firstStation: a, endStation: b)


