
// Class: pass by reference, need init()
// Struct: pass by value (make copy), free init()

let skelton1 = Enemy(health: 100, attackStrength: 10)
let skelton2 = Enemy(health: 100, attackStrength: 10)

skelton1.takeDamage(amount: 10)
print("Skelton1's health: \(skelton1.health)")

let dragon = Dragon(health: 1000, attackStrength: 50)
dragon.wingSpan = 5
print("Dragon's wingspan is: \(dragon.wingSpan)")

dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane")
dragon.move()
dragon.attack()

