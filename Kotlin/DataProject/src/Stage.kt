fun main() {
    filterGirlsByAddress("广东")

    println(database.maxBy { it.age })
    println(database.maxBy { it.height })
    println(database.minBy { it.height })

    println(database.filter {
        it.address == "广东" && it.age < 30
    })

    var result = database.map {
        "${it.name} : ${it.age}"
    }
    println(result)

    println(database.count {
        it.age < 20
    })

    println(database.groupBy {
        it.address
    }.get("广东")?.forEach {
        println(it.name)
    })

    database.filterGirlUnder(30)
}