import java.math.BigInteger

fun main(args: Array<String>) {
    var num = BigInteger("5")
    println(face(num))

    println("${ollAdd(100, 0)}")
}
//阶乘
fun face(num: BigInteger): BigInteger {
    if (num == BigInteger.ONE) {
        return num
    } else {
        return num*face(num-BigInteger.ONE)
    }
}
//累加 tailrec 尾递归优化
tailrec fun ollAdd(num: Int, result: Int): Int {
    println("计算机第${num}次运算, result=${result}")
    if (num == 0) {
        return num
    } else {
        return ollAdd(num-1, result+num)
    }
}