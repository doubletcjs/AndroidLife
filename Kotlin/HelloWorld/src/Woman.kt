class Woman(name: String): Human(name) {
    override fun eat() {
        println("${name}哇哇哇的小口吃")
    }

    override fun pee() {
        println("${name}蹲着尿尿")
    }
}