

class Charcter
    attr_accessor :hp, :attack, :defense, :speed, :level
    attr_reader :name, :skill1, :skill2, :skill3, :skill4
    def initialize(name,hp,attack,defense,speed,skill1,skill2,skill3,skill4,level)
        @name = name
        @hp = hp
        @attack = attack
        @defense = defense
        @speed = speed
        @skill1 = skill1
        @skill2 = skill2
        @skill3 = skill3
        @skill4 = skill4
        @level = level
        @command = ""
        @defaultattack = attack
        @defaultdefense = defense
        @attackcounter = 0
        @defensecounter = 0
    end

#キャラクターのステータスを表示する
    def status()
        puts "--------------"
        puts "Lv#{@level}:#{@name}"
        puts "体力#{@hp}:攻撃#{@attack}:防御#{@defense}:速さ#{@speed}"
        puts "--------------"
    end

#----------通常攻撃----------

#（自身の攻撃力　－　相手の防御力）のダメージを与える攻撃
    def normal(target)
            puts "#{@name}の#{@command}"
            damage = (@attack - target.defense).floor
            if damage <= 0 then
                damage = 1
            end
            puts "#{target.name}は#{damage}のダメージ"
            target.hp = target.hp - damage
            puts "#{target.name}の残りHPは#{target.hp}"
    end

#（自身の攻撃力*(0.8~1.2の乱数)　－　相手の防御力）のダメージを与える攻撃
    def normal2(target)
        multi = rand(0.8..1.2)
        puts "#{@name}の#{@command}"
        damage = ((@attack * multi) - target.defense).floor
        if damage <= 0 then
            damage = 1
        end
        puts "#{target.name}は#{damage}のダメージ"
        target.hp = target.hp - damage
        puts "#{target.name}の残りHPは#{target.hp}"
    end

#----------兵士スキル----------

    def extra(target)
        puts "#{@name}：「なんだ貴様は」"
        puts "#{target.name}は斬りつけられた。"
        damage = (@attack - target.defense).floor
        if damage <= 0 then
            damage = 1
        end
        puts "#{target.name}は#{damage}のダメージ"
        target.hp = target.hp - damage
        puts "#{target.name}の残りHPは#{target.hp}"
    end

    

#----------特殊攻撃----------

#（自身の攻撃力*1.2)　－　相手の防御力）のダメージを与える攻撃
    def punch2(target)
        puts "#{@name}の#{@command}"
        damage = ((@attack * 1.2) - target.defense).floor
        if damage <= 0 then
            damage = 1
        end
        puts "#{target.name}は#{damage}のダメージ"
        target.hp = target.hp - damage
        puts "#{target.name}の残りHPは#{target.hp}"
    end

#----------攻撃系のバフ----------
#自身の攻撃力を2ターンの間1.5倍にする
    def baf1()
        if (@attackcounter === 1 or @attackcounter === 0)
            @attackcounter = 2
            puts "#{@name}の#{@command}"
            @attack = (@attack * 1.5).floor
            puts "#{@name}の攻撃は#{@attack}になった"
        else
            puts "今は使えない"
        end
    end

#----------防御系のバフ----------

#自身の防御力を2ターンの間1.5倍にする
    def baf2()
        if (@defensecounter === 1 or @attackcounter === 0)
            @defensecounter = 2
            puts "#{@name}の#{@command}"
            @defense = (@defense * 1.5).floor
            puts "#{@name}の防御は#{@defense}になった"
            @counter = 1
        else
            puts "今は使えない"
        end
        
    end

#自身の防御力を2ターンの間2倍にする
    def baf3()
        if (@defensecounter === 1 or @attackcounter === 0)
            @defensecounter = 2
            puts "#{@name}の#{@command}"
            @defense = (@defense * 2.0).floor
            puts "#{@name}の防御は#{@defense}になった"
        else
            puts "今は使えない"
        end
        
    end


#----------その他のスキル----------
    def none()
        puts "#{@name}は様子を見ている"
    end

    def none2()
        puts "#{@name}は今にも動き出しそうだ"
    end

#----------戦闘中に使う関数----------

    def attack1(char,target)
        @command = @skill1
        char.skillselect(char,target)
    end

    def attack2(char,target)
        @command = @skill2
        char.skillselect(char,target)
    end

    def attack3(char,target)
        @command = @skill3
        char.skillselect(char,target)
    end

    def attack4(char,target)
        @command = @skill4
        char.skillselect(char,target)
    end
    

    def skillselect(char,target)
        if (@command == "パンチ" || @command == "体当たり" || @command == "押しつぶし" || @command == "斬りつける" || @command == "杖で殴る" || @command == "こん棒で殴る" || @command == "呪う")
            char.normal(target) 
        elsif (@command == "キック" || @command == "一閃" || @command == "打撃魔法")
            char.normal2(target)
        elsif (@command == "集中" || @command == "詠唱")
            char.baf1()          
        elsif (@command == "防御")
            char.baf2()
        elsif (@command == "守りを固める")
            char.baf3()
        elsif (@command == "正拳突き")
            char.punch2(target)
        elsif (@command == "なんだ貴様は")
            char.extra(target)    
        elsif (@command == "様子を見る")
            char.none()
        elsif (@command == "")
            char.none2()
        end       
    end

    def attackcount()
        case @attackcounter
        when 0
            @defaultattack = @attack
            @attackcounter = @attackcounter + 1
        when 1
        when 2
          @attackcounter = @attackcounter + 1
        when 3
            @attackcounter = @attackcounter + 1
        when 4
          puts "攻撃力は元に戻った"
          @attack = @defaultattack
          @attackcounter = 0
        end
    end

    def defensecount()
        case @defensecounter
        when 0
            @defaultdefense = @defense
            @defensecounter = @defensecounter + 1
        when 1
        when 2
            @defensecounter = @defensecounter + 1
        when 3
            @defensecounter = @defensecounter + 1
        when 4
          puts "防御力は元に戻った"
          @defense = @defaultdefense
          @defensecounter = 0
        end
    end


    def killed(target)
        return target.hp <= 0
    end

end

    

class Player < Charcter
    def initialize(name,hp,attack,defense,speed,skill1,skill2,skill3,skill4,level)
        super(name,hp,attack,defense,speed,skill1,skill2,skill3,skill4,level)
        @exp = 0
    end

#経験値の量に応じてレベルアップする処理（50レベルまで）   
    def levelup()
        if (@level < 10)
            while @exp >= 5 && @level < 10
                hppoint = rand(5..8)
                attackpoint = rand(3..5)
                defensepoint = rand(3..5)
                speedpoint = rand(3..5)
                @hp = @hp + hppoint
                @attack = @attack + attackpoint
                @defense = @defense + defensepoint
                @speed = @speed + speedpoint
                @exp = @exp - 5
                @level = @level + 1
                puts "おめでとうレベルが１上がったよ"
                puts "hpが#{hppoint}上がった"
                puts "attackが#{attackpoint}上がった"
                puts "defenseが#{defensepoint}上がった"
                puts "speedが#{speedpoint}上がった"
            end
        elsif (@level < 20)
            while @exp >= 15 && @level < 20
                hppoint = rand(12..15)
                attackpoint = rand(5..8)
                defensepoint = rand(5..8)
                speedpoint = rand(5..8)
                @hp = @hp + hppoint
                @attack = @attack + attackpoint
                @defense = @defense + defensepoint
                @speed = @speed + speedpoint
                @exp = @exp - 15
                @level = @level + 1
                puts "おめでとうレベルが１上がったよ"
                puts "hpが#{hppoint}上がった"
                puts "attackが#{attackpoint}上がった"
                puts "defenseが#{defensepoint}上がった"
                puts "speedが#{speedpoint}上がった"
            end
        elsif (@level < 30)
            while @exp >= 30 && @level < 30
                hppoint = rand(17..20)
                attackpoint = rand(9..12)
                defensepoint = rand(9..12)
                speedpoint = rand(9..12)
                @hp = @hp + hppoint
                @attack = @attack + attackpoint
                @defense = @defense + defensepoint
                @speed = @speed + speedpoint
                @exp = @exp - 30
                @level = @level + 1
                puts "おめでとうレベルが１上がったよ"
                puts "hpが#{hppoint}上がった"
                puts "attackが#{attackpoint}上がった"
                puts "defenseが#{defensepoint}上がった"
                puts "speedが#{speedpoint}上がった"
            end
        elsif (@level < 40)
            while @exp >= 50 && @level < 40
                hppoint = rand(27..30)
                attackpoint = rand(13..15)
                defensepoint = rand(13..15)
                speedpoint = rand(13..15)
                @hp = @hp + hppoint
                @attack = @attack + attackpoint
                @defense = @defense + defensepoint
                @speed = @speed + speedpoint
                @exp = @exp - 50
                @level = @level + 1
                puts "おめでとうレベルが１上がったよ"
                puts "hpが#{hppoint}上がった"
                puts "attackが#{attackpoint}上がった"
                puts "defenseが#{defensepoint}上がった"
                puts "speedが#{speedpoint}上がった"
            end
        elsif (@level < 50)
            while @exp >= 100 && @level < 50
                hppoint = rand(37..40)
                attackpoint = rand(16..20)
                defensepoint = rand(16..20)
                speedpoint = rand(16..20)
                @hp = @hp + hppoint
                @attack = @attack + attackpoint
                @defense = @defense + defensepoint
                @speed = @speed + speedpoint
                @exp = @exp - 100
                @level = @level + 1
                puts "おめでとうレベルが１上がったよ"
                puts "hpが#{hppoint}上がった"
                puts "attackが#{attackpoint}上がった"
                puts "defenseが#{defensepoint}上がった"
                puts "speedが#{speedpoint}上がった"
            end
        elsif (@level === 50)
            puts "最高レベルだよ"
        end
    end

#敵を倒した際の処理
    def victory(target)
        puts "#{@name}は#{target.name}を倒した！"
        puts "#{@name}は#{target.exppoint}の経験値を獲得した"
        @exp = @exp + target.exppoint
    end
    
#敵に負けた時の処理    
    def lose()
        puts "#{@name}は死んでしまった"
    end
    

end

class Monster < Charcter
    attr_accessor :exppoint
    def initialize(name,hp,attack,defense,speed,skill1,skill2,skill3,skill4,level,exppoint)
        super(name,hp,attack,defense,speed,skill1,skill2,skill3,skill4,level)
        @exppoint = exppoint
    end

#敵が現れた時の処理
    def show()
        puts "#{@name}が現れた"
    end
    
#敵のスキルをランダムに選択する処理    
    def moattack(target,char)
        enemyskill = rand(1..4)
        if (enemyskill === 1) then
            target.attack1(target,char)
        elsif (enemyskill === 2)
            target.attack2(target,char)
        elsif (enemyskill === 3)
            target.attack3(target,char)
        elsif (enemyskill === 4)
            target.attack4(target,char)
        end
    end
    
end
