
data class Girl(var name: String, var age: Int, var height: Int, var address: String)

var database = listOf<Girl>(
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",35,168,"广东"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",21,138,"广东"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"广东"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",17,190,"广东"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd"),
    Girl("a",19,168,"sd")
)

fun filterGirlsByAddress(address: String): ArrayList<Girl> {
    var list = ArrayList<Girl>()
    database.forEach {
        if (it.address == address && it.age < 20) {
            list.add(it)
        }
    }

    list.forEach {
        println("${it.address} ${it.age}岁的美女 ${it.name}")
    }

    return list
}

fun List<Girl>.filterGirlUnder(age: Int) {
    filter {
        it.age < age
    }.forEach(::println)
}