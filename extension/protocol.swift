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
}

protocol Livable {
    var life: Int { get }

    var isAlive: Bool { get }

    func kill()
}

extension Target: Livable {
    var isAlive: Bool {return life > 0}

    func kill() {
        damage(life)
    }
}

let goblin = Target("Goblin 1", 100)
goblin.damage(10)

let livable: Livable = goblin

print(livable.life)
print(livable.isAlive)

livable.kill()

print(goblin.life)
print(livable.isAlive)
