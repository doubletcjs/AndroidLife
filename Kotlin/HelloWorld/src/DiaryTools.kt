
fun diaryGenerater(placeName: String): String {
    var temple = """
        今天天气晴朗，万里无云，我们去${placeName}游玩，
        首先映入眼帘的是，${placeName}${placeName.length}个鎏金打字。
    """.trimIndent()

    return temple

}

fun main(args: Array<String>) {
    var diary = diaryGenerater("中山公园")

    println(diary)
}