fun main(args: Array<String>) {
    var wash = WashMachine(module = "小天鹅", size = 12)
    wash.openDoor()
    println("阿的说法")

    wash.closeDoor()
    wash.selectModel(1)

    wash.start()
}