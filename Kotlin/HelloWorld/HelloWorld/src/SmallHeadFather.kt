class SmallHeadFather: IWashBowl by BigHeadSon {
    override fun washing() {
        println("小头爸爸，我洗碗，一次赚10块钱")
        BigHeadSon.washing()
        println("我看着儿子把碗洗好")
    }
}