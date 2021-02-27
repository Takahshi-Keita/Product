require "./charcter"

class Game

  #マップの進行度
  @map = 1
  #森の進行度
  @forestcount = 0
  #ボスの進行度
  @bosscount = 0
  #主人公
  @player = Player.new("アル",50,10,5,10,"パンチ","パンチ","パンチ","パンチ",1)
  #敵キャラクター
  @enemy


#プロローグ・第一章の処理（ストーリーの概要➡主人公の説明➡主人公の就職➡自由行動） 
  def self.story1
    puts "\e[H\e[2J"
    puts "ここは国にはまだ名前がない・・・"
    puts "それだけでなく土地も国と言うには狭くまだ開拓が進んでいない。"
    puts "まだ国の8割は森だった。"
    self.deleteenter
    puts "月日が流れ、その森は怪物たちの住処となった。"
    puts "その森は木が生い茂り、薄暗かったことがことが怪物たちには好都合だったのだ。"
    puts "ドラゴンをはじめとした怪物たちに怯えた国民は森には近づかなくなった。"
    puts "森にはたくさんの資源がある。"
    puts "その資源が使えないとなるとじりじりとこの国は衰退していく。"
    puts "今は隣の国からの支援を受けながらぎりぎりのところでこの国は保たれている。"
    puts "この問題を解決する方法は一つしかない。"
    self.deleteenter
    puts "そう。"
    self.enter
    puts "ドラゴンを倒さなくては・・・"
    self.deleteenter
    puts "あれから月日は流れた。"
    puts "森に怪物が現れたあの日から国は怪物たちに対抗するために新しい職業ができた。"
    puts "「冒険者」"
    puts "冒険者は森の怪物を倒せば倒すほど報酬金がもらえる。"
    puts "命の危険が伴う冒険者はその分報酬金も多い。"
    puts "そして、冒険者には1つのクエストが課されている。"
    self.deleteenter
    puts "「森のドラゴンの討伐」"
    puts "報酬は3つ。"
    puts "1つは王様からなんっでも願いをかなえてもらえる権利。"
    puts "2つ目はクエスト成功者の名前を国の名前にするというもの。"
    puts "そして、3つ目は「英雄」の称号。"
    puts "文字通り国を救った英雄として構成までに語り継がれる。"
    puts "英雄というのは世の少年の憧れだ。"
    self.deleteenter
    puts "そんな英雄に憧れた少年がこの田舎町にもいた"
    self.deleteenter
    puts "この日をどれだけ待ち望んだことか"
    puts "俺は今日18歳になる。"
    puts "この国の男性は18歳で就職することができる。"
    puts "冒険者、鍛冶屋、道具屋、大工などなど好きな職に無条件で就くことができる。"
    puts "就職には王城の公共職業安定所の間に行かなければならない"
    self.deleteenter
    puts "「冒険者になって英雄になる。」"
    puts "これが俺の小さいころからの夢だった。"
    puts "俺は今日で冒険者になることができる。"
    puts "はやる気持ちを抑えながら俺は家の扉に手をかけた。"
    self.deleteenter
    self.home
    puts "アル：「ここが公共職業安定所か」"
    puts "職員：「お待ちしておりました。どの職業をご希望ですか？」"
    puts "アル：「もちろん。冒険者です！！」"
    puts "職員：「かしこまりました。それでは手続きをいたしますのでこちらへ。」"
    puts "俺は職員に促さるまま受付に向かった"
    puts "それでは希望する職種をお選びください"
    self.deleteenter
    self.job
    puts "無事職種も決まった俺はさっそくドラゴンを倒すために冒険を始めるのであった。"
    self.deleteenter
    @map = 2
    self.home
  end

#第一章エピローグ・第二章の処理（ゴーレム撃破➡遺跡の説明➡ドラゴン討伐に向けた自由行動）
#※製作途中  
  def self.story2
    @map = 3
    puts "何とかゴーレムを倒したアルはふらふらとした足取りで遺跡に向かっていった。"
    puts "一歩遺跡に足を踏み入れた時だった。"
    puts "アルの心は恐怖に支配された。"
    puts "アルはこれまでドラゴンを見たことなかったのだが分かる。"
    puts "これはドラゴンの気配・・・。"
    puts "姿かたちも見えないのにこの突き刺さるような気配。"
    puts "確実にここにドラゴンがいるという考えとともにある考えが頭をよぎる。"
    self.deleteenter
    puts "自分が相手にしようとしているのはこんなに強大な敵なのか？"
    puts "アルは無意識のうちに足が移籍の出口へ向いていた。"
    self.deleteenter
    puts "気が付いたらアルは街に戻っていた。"
    puts "息を乱しながらアルは考える。"
    puts "俺は・・・"
    self.deleteenter
    puts "俺は・・・・・・"
    self.deleteenter
    puts "こんなに強大な敵を相手にしなければならないのか？"
    puts "と、"
    self.deleteenter
    puts "でも、やらなきゃいけない。"
    puts "王国のためではない、"
    puts "自分のために！"
    puts "英雄になりたいと願った自分の夢のために！！"
    self.deleteenter
    puts "第一章"
    sleep 1
    puts "　完　"
    puts"エンターボタンで終了"
    self.deleteenter
    exit
  end

#エピローグの処理
#※製作途中
  def self.story3

  end


#エンターを押したら処理が進む処理 （コンソールログを消す）  
  def self.deleteenter
    puts "(エンターボタンを押そう)"
    enter = gets.to_i
    puts "\e[H\e[2J"
  end


#エンターを押したら処理が進む処理（コンソールログを残す）
  def self.enter
    puts "(エンターボタンを押そう)"
    enter = gets.to_i
  end


#街を移動する処理  
  def self.home
    puts "ーどこへ向かう？ー"
    puts "--------------"
    puts "[1]: 王城"
    puts "[2]: 自宅"
    puts "[3]: 暗い森"
    if (@map == 2)
      puts "[4]: 道具屋"
    end
    puts "--------------"
    where = gets.to_i
    puts "\e[H\e[2J"
    case where
      when 1
        if (@map == 1) 
          puts "アル：「よし、王城に向かおう」"
          self.deleteenter 
          self.castle
        elsif (@map == 2) 
          puts "アル：　「就職もしたしもう用はないな」"
          self.deleteenter
          self.home
        end
      when 2
        if (@map == 1) 
          puts "家に帰ってもしょうがない"
          self.deleteenter
          self.home
        elsif (@map == 2) 
          puts "アル：「そろそろ休憩するか」"
          puts "ゲームを終了しますか？"
          puts "[1]: はい"
          puts "[2]: いいえ"
          nput = gets.to_i
          case nput
          when 1
            exit
          when 2
            self.deleteenter
            self.home
          else
            puts "そんなコマンドないよ"
            self.deleteenter
            self.home
          end
        end
      when 3
        if (@map == 1) 
          puts "ここに用はない"
          self.deleteenter
          self.home
        elsif (@map == 2) 
          puts "アル：「森に行くぞ・・・」"
          puts "森に入りますか？"
          puts "[1]: はい"
          puts "[2]: いいえ"
          forest = gets.to_i
          case forest
          when 1
            @forestcount = 0
            self.forest
          when 2
            self.deleteenter
            self.home
          else
            puts "そんなコマンドないよ"
            self.deleteenter
            self.home
          end
        end
      when 4
        if (@map == 1) 
          puts "そんなコマンドないよ"
          self.deleteenter
          self.home
        elsif (@map == 2)
          puts "道具屋だ"
          self.deleteenter
          self.home
        end
      else
        puts "そんなコマンドないよ"
        self.deleteenter
        self.home
    end
  end

#王城内を移動する処理
  def self.castle  
    puts "ーどこへ向かう？ー"
    puts "--------------"
    puts "[1]: 王の間（非推奨）"
    puts "[2]: 公共職業安定所の間"
    puts "[3]: 家"
    puts "--------------"
    where = gets.to_i
    puts "\e[H\e[2J"
    case where
      when 1
        puts "俺は興味本位で王の間へ向かった"
        self.deleteenter
        puts "兵士A：「なんだ貴様は。」"
        sleep 1
        puts "兵士B：「王は今忙しい。」"
        sleep 1
        puts "兵士C：「お引き取り願おう。」"
        self.deleteenter
        self.battlefaze(10)
      when 2
        puts "俺は公共職業安定所の間へ向かった"
        self.deleteenter
      when 3
        puts "アル：せっかく王城に来たのに家に帰るわけにはいかないな"
        self.deleteenter
        self.castle
      else
        puts "そんなコマンドないよ"
        self.deleteenter
        self.castle
    end
  end

#暗い森を移動する処理  
  def self.forest
    puts "木々がうっそうと生い茂る森だ"
    while true
      puts "どうする？"
      puts "--------------"
      puts "[1]: 先へ進む"
      puts "[2]: 引き返す"
      puts "--------------"
      forestway = gets.to_i
      puts "\e[H\e[2J"
      case forestway
      when 1
        puts "木々をかき分けながら先に進んだ。"
        @forestcount = @forestcount + 1
        puts "進行度：#{@forestcount}/10"
        forestrandom = rand(1..4)
        if (forestrandom === 1)
          self.battlefaze(1)
        elsif (forestrandom === 2)
          self.battlefaze(2)
        elsif (forestrandom === 3)
          self.battlefaze(3)
        elsif (forestrandom === 4)
          self.golem
        end
      when 2
        puts "アル：「とりあえず引き返そう」"
        @forestcount = @forestcount - 1
        puts "進行度：#{@forestcount}/10"
        if (@forestcount <= 0)
          puts "森から帰ってきた"
          self.deleteenter
          self.home
        else
          forestrandom = rand(1..4)
          if (forestrandom === 1)
            self.battlefaze(1)
          elsif (forestrandom === 2)
            self.battlefaze(2)
          elsif (forestrandom === 3)
            self.battlefaze(3)
          elsif (forestrandom === 4)
            self.golem
          end
        end
      else
        puts "そんなコマンドないよ"
        self.deleteenter
      end
    end
  end


#ゴーレム（中ボス戦）の処理
  def self.golem
    if (@forestcount === 10)
      puts "森を抜けたら古い遺跡のようなものを見つけた"
      puts "遺跡の入り口にはゴーレムがたたずんでいる。"
      while true
        puts "どうする？"
        puts "--------------"
        puts "[1]: ゴーレムと戦う"
        puts "[2]: 引き返す"
        puts "--------------"
        golemselect = gets.to_i
        puts "\e[H\e[2J"
        case golemselect
          when 1
            self.battlefaze(4)
          when 2
            puts "アル：「とりあえず引き返そう」"
            @forestcount = @forestcount - 1
            self.deleteenter
            self.forest
          else
            puts "そんなコマンドないよ"
            self.deleteenter
          end
        end
    else 
      puts "まだ森を抜けない"
      self.deleteenter
      self.forest
    end
  end


#職業を選択する処理
  def self.job
    puts "ーどの職種にする？ー"
    puts "--------------"
    puts "[1]: 剣士"
    puts "[2]: 格闘家"
    puts "[3]: 魔法使い"
    puts "--------------"
    job = gets.to_i
    puts "\e[H\e[2J"
    case job
      when 1
        @player = Player.new("アル",80,50,10,15,"斬りつける","一閃","集中","防御",1)
        @player.status()
        puts "スキル: #{@player.skill1}：#{@player.skill2}：#{@player.skill3}：#{@player.skill4}"
        puts "剣士にする？"
        self.jobychoice
      when 2
        @player = Player.new("アル",90,40,10,15,"パンチ","キック","集中","防御",1)
        @player.status()
        puts "スキル: #{@player.skill1}：#{@player.skill2}：#{@player.skill3}：#{@player.skill4}"
        puts "格闘家にする？"
        self.jobychoice
      when 3
        @player = Player.new("アル",70,65,5,15,"杖で殴る","打撃魔法","詠唱","防御",1)
        @player.status()
        puts "スキル: #{@player.skill1}：#{@player.skill2}：#{@player.skill3}：#{@player.skill4}"
        puts "魔法使いにする？"
        self.jobychoice
      else
        puts "そんなコマンドないよ"
        puts "⏎"
        self.deleteenter
        self.job
    end
  end

  def self.jobychoice()
    puts "[1]: はい"
    puts "[2]: いいえ"
    yesno = gets.to_i
    case yesno
    when 1
      puts "アル：「これで今日から俺は冒険者だ」"
      self.deleteenter
    when 2
      puts "アル：「もう少し考えよう」"
      self.deleteenter
      self.job
    else
      puts "そんなコマンドないよ"
      self.deleteenter
      self.job
    end

  end

#敵の出現からコマンドバトルまでの処理
  def self.battlefaze(monsternumber)

#----------敵（モンスター）----------
#実装済み
    a = Monster.new("スライム",50,30,15,10,"体当たり","体当たり","様子を見る","様子を見る",1,3)
    b = Monster.new("ゴブリン",120,30,40,10,"こん棒で殴る","こん棒で殴る","こん棒で殴る","様子を見る",3,5)
    c = Monster.new("ゴースト",150,30,10,10,"呪う","呪う","様子を見る","様子を見る",5,10)
    d = Monster.new("ゴーレム",500,50,50,10,"押しつぶし","押しつぶし","","",10,20)
#未実装
    e = Monster.new("モス",50,30,0,5,"","","","",7,0)
    f = Monster.new("オーク",50,30,0,5,"","","","",7,0)
    g = Monster.new("ヴァンパイア",50,30,0,5,"","","","",7,0)
    h = Monster.new("小竜",50,30,0,5,"","","","",7,0)
    i = Monster.new("ドラゴン",50,30,0,5,"","","","",7,0)
#実装済み
    j = Monster.new("兵士",1000,1000,1000,1000,"なんだ貴様は","なんだ貴様は","なんだ貴様は","なんだ貴様は",99,1000)

      case monsternumber
        when 1
          @enemy = a
        when 2
          @enemy = b
        when 3
          @enemy = c
        when 4
          @enemy = d
        when 5
          @enemy = e
        when 6
          @enemy = f
        when 7
          @enemy = g
        when 8
          @enemy = h
        when 9
          @enemy = i
        when 10
          @enemy = j       
      end

    @enemy.show()
    self.default(@player)
    @player.attackcount()
    @player.defensecount()
    self.commandfaze
  end

#コマンドバトルの処理
  def self.commandfaze
    while true
      puts "--------------"
      puts "コマンドを選択してください。"
      puts "--------------"
      puts "[1]: #{@player.skill1}"
      puts "[2]: #{@player.skill2}"
      puts "[3]: #{@player.skill3}"
      puts "[4]: #{@player.skill4}"
      puts "[5]: にげる（50%の確率で失敗）"
      puts "--------------"
      
      input = gets.to_i
      puts "\e[H\e[2J"
      case input
        when 1
          @player.attack1(@player,@enemy)
        when 2
          @player.attack2(@player,@enemy)
        when 3
          @player.attack3(@player,@enemy)
        when 4
          @player.attack4(@player,@enemy)
        when 5
          lack = rand(2)
          if lack === 0 then
              puts "逃げ出せない"
              @player.attackcount()
              @player.defensecount()
              self.battle(@player,@enemy)
              @player.status()
              @enemy.status()
          else
              puts "#{@player.name}は逃げ出した"
              self.continue
          end
        else
          puts "そんなコマンドないよ"
          self.deleteenter
          self.commandfaze
      end
      @player.attackcount()
      @player.defensecount()
      self.battle(@player,@enemy)
      @player.status()
      @enemy.status()
    end
  end


#バトルの勝ち負けを判断し勝った場合はレベルアップの処理をし、負けた場合はコンテニューの処理をする
  def self.battle(char,target)
    if char.killed(target)
      char.victory(target)
      self.reset(@player)
      char.levelup
      char.status()
      self.deleteenter
      if (target.name === "ゴーレム")
        @bosscount = 1
      end
      if (@bosscount === 0)
        if (@map === 1)
          self.castle
        elsif (@map === 2)
          self.golem
        end
      elsif (@bosscount === 1)
        self.story2
      end
      
    end
    target.moattack(target,char)
    if target.killed(char)
      char.lose()
      puts "GAMEOVER"
      self.continue
      end
  end

#ゲームをやり直す処理  
  def self.continue
    puts "もう一度プレイしますか？"
    puts "[1]: はい"
    puts "[2]: いいえ"
    input = gets.to_i
    case input
    when 1
      if (@map === 1)
        self.reset(@player)
        self.story1
      elsif (@map === 2)
        self.reset(@player)
        puts "\e[H\e[2J"
        self.home
      end
    when 2
      puts "\e[H\e[2J"
      puts "ゲームを終了します"
      self.deleteenter
      exit
    else
      puts "そんなコマンドないよ"
      self.deleteenter
      self.continue
    end
  end

#ステータスのデフォルト値を保存する処理
  def self.default(char)
    @defaulthp = char.hp
    @defaultattack = char.attack
    @defaultdefense = char.defense
    @defaultspeed = char.speed
  end

#ステータスをデフォルト値に戻す処理
  def self.reset(char)
    char.hp = @defaulthp
    char.attack = @defaultattack
    char.defense = @defaultdefense
    char.speed = @defaultspeed
  end


end

#スタート画面
while true
  puts "\e[H\e[2J"
  puts "「コマンドRPG」"
  puts "[1]: はじめから"
  puts "[2]: おわる"
  input = gets.to_i
  case input
  when 1
    Game.story1
  when 2
    exit
  else
    puts "そんなコマンドないよ"
    self.deleteenter
  end
end






