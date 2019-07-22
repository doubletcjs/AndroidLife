
fun main(args: Array<String>) {
    while (true) {
//        var a = 8
//        var b = 2
//
//        println("a+b="+plus(a, b))
//        println("a-b="+sub(a, b))
//        println("a*b="+mutl(a, b))
//        println("a/b="+devide(a, b))

        println("请输入第一个数字:")
        var number1Str = readLine()
        println("请输入第二个数字:")
        var number2Str = readLine()

        try {
            var num1 = number1Str!!.toInt()
            var num2 = number2Str!!.toInt()

            println("${num1} + ${num2} = ${num1 + num2}")
        } catch (e: Exception) {
            println("${e}")
        }
    }
}

fun plus(a: Int, b: Int): Int {
    return a+b
}

fun sub(a: Int, b: Int): Int {
    return a-b
}

fun mutl(a: Int, b: Int): Int {
    return a*b
}

fun devide(a: Int, b: Int): Int {
    return a/b
}

fun save(logLevel: DeprecationLevel) {
    println("${logLevel}")
}