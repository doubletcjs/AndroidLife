
sealed class sSon {
    fun sayHello() {
        println("大家好")
    }

    class 小小lu: sSon()
    class 小炉子: sSon()
}

fun main() {
    var son1 = sSon.小小lu()
    var son2 = sSon.小炉子()
    var son3 = sSon.小小lu()

    var list = listOf<sSon>(son1, son2, son3)
    list.forEach {
        if (it is sSon.小小lu) {
            it.sayHello()
        }
    }
}