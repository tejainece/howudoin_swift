class Target {
    private var name: String

    private var _life: Int

    init(_ name: String, _ life: Int) {
        self.name = name
        self._life = life
    }

    func damage(_ damage: Int) {
        self._life -= damage
        if self._life < 0 {
            self._life = 0
        }
    }

    var life: Int {return _life}


    var isAlive: Bool {return _life > 0}
}

let goblin = Target("Goblin 1", 100)
goblin.damage(10)

print(goblin.life)
