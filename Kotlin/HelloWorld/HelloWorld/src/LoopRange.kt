
fun main(args: Array<String>) {
    var nums = 1..100
    var result = 0

    for (num in nums) {
        println("${num}")
        result += num
    }

    println("累加结果${result }")
    
}