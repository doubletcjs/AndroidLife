import java.util.*

fun main(args: Array<String>) {
    var list = listOf("a", "b", "c")
    println("${list}")

    for ((i, e) in list.withIndex()) {
        println("${i} -- ${e}")
    }

    var map = TreeMap<String, String>()
    map["好"] = "good"
    map["学习"] = "study"
    map["天"] = "day"
    map["向上"] = "up"

    println("${map}")
    println("${map["天"]}")
}
