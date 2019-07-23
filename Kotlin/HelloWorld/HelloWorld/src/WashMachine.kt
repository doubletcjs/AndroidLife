class WashMachine(var module: String, var size: Int) {
    var isDoorOpen = true
    var currentMode: Int = 0

    fun openDoor() {
        println("门打开")
        isDoorOpen = true
    }

    fun closeDoor() {
        println("门关闭")
        isDoorOpen = false
    }

    fun selectModel(model: Int) {
        currentMode = model

        when (model) {
            0 -> println("初始模式，请您选择模式")
            1 -> println("轻柔")
            2 -> println("狂柔")
            else -> println("不要乱拧，拧坏了不保修啊")
        }
    }

    fun start() {
        if (isDoorOpen) {
            println("门还没关")
        } else {
            when (currentMode) {
                0 -> {
                    println("模式选择错误")
                }
                1 -> {
                    println("放水")
                    println("轻柔开始，发动机转速 慢")
                    setMoterSpeed(100)
                    println("洗完啦")
                }
                2 -> {
                    println("放水")
                    println("狂柔开始，发动机转速 快")
                    setMoterSpeed(1000)
                    println("洗完啦")
                }
                else -> {
                    println("模式不能被识别")
                }
            }
        }
    }

    private fun setMoterSpeed(speed: Int) {
        println("当前发动机转速为${speed}圈/秒")
    }
}