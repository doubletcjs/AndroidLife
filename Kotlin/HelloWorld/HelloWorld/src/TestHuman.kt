fun main() {
    var person1 = Man("金三胖")
    person1.eat()

    var person2 = Woman("慈禧太后")
    person2.eat()

    var person3 = Man("男1")
    var person4 = Woman("女1")
    var person5 = Man("男2")

    var houseList = listOf<Human>(person1, person2, person3, person4, person5)
    houseList.forEach {
        it.pee()
    }
}