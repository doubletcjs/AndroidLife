

fun main(args: Array<String>) {
    println("${gradeStudent(3)}")
}

fun gradeStudent(scroe: Int) {
    when(scroe) {
        10 -> println("满分")
        9 -> println("不错")
        8 -> println("还可以")
        7 -> println("需努力")
        6 -> println("刚及格")
        else -> println("需加油")
    }
}