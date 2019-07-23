var printAll = fun (name: String): Unit {
    println(name)
}

fun main() {
    var names = listOf<String>("a", "b", "c")
    names.forEach(printAll)

    names.forEach {
        println(it)
    }
}