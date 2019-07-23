class Man(name: String): Human(name) {
    override fun eat() {
        println("${name}哇哇哇的大口吃")
    }

    override fun pee() {
        println("${name}站着尿尿")
    }
}
