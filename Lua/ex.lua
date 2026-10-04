-- muda a linguagem de interpretação para ler emoji
os.execute("chcp 65001")

mob = {}
mob.__index = mob

function mob.new (nome, description, hostile, cicle, sound, attack, defense, speed, life, inteligence)
    local self = setmetatable({}, mob)
    self.nome = nome
    self.description = description
    self.hostile = hostile
    self.cicle = cicle
    self.sound = sound
    self.attack = attack
    self.defense = defense
    self.speed = speed
    self.life = life
    self.inteligence = inteligence
    return self
end

function progressBar (atribute)
    local fullBox = "⬜"
    local emptyBox = "⬛"
    
    local result = ""
    for i = 1, 10, 1 do
        if i <= atribute then
            result = result .. fullBox
        else 
            result = result .. emptyBox
        end
    end
    return result
end

function mob:printStats()
    print ("================================================")
    print (self.nome)
    print (self.description)
    print (self.sound)
    print ("================================================")
    print ("hostile:    " .. tostring(self.hostile))
    print ("cicle:      " .. self.cicle)
    print ("attack:     " .. progressBar(self.attack))
    print ("speed:      " .. progressBar(self.speed))
    print ("defense:    " .. progressBar(self.defense))
    print ("life:       " .. progressBar(self.life))
    print ("inteligence:" .. progressBar(self.inteligence))
    print ()
    print ("================================================")
end

local mob1 = mob.new("Slime", "A small, gelatinous creature that bounces around.", true, 5, "Squish!", 3, 2, 4, 6, 1)
local mob2 = mob.new("wither", "A skeletal creature that can shoot projectiles.", true, 7, "Rattle!", 5, 3, 6, 8, 4)
local mob3 = mob.new("Enderman", "A tall, dark creature that can teleport.", true, 6, "Screech!", 4, 2, 7, 5, 5)
local mob4 = mob.new("Zombie", "A reanimated corpse that shambles towards its prey.", true, 4, "Groan!", 2, 1, 3, 7, 1)
local mob5 = mob.new("Skeleton", "A bony creature that wields a bow and arrow.", true, 5, "Clatter!", 3, 2, 5, 6, 2)

mob1:printStats()
mob2:printStats()
mob3:printStats()
mob4:printStats()
mob5:printStats()