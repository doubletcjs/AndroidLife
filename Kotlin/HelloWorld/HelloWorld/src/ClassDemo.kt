class Rect(var width: Int, var height: Int)

class Girl(var chactor: String, var voice: String) {
    fun smaile() {
        println("妹子笑了一下，么么哒")
    }

    fun cry() {
        println("呜呜呜，人家伤心了")
    }
}

fun main(args: Array<String>) {
    var rect = Rect(height = 20, width = 10)
    println("高度：${rect.height}")
    println("宽度：${rect.width}")

    var girl = Girl(chactor = "彪悍", voice = "甜美")
    println("${girl}")

    girl.smaile()
    girl.cry()
}