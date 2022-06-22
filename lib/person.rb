class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def set_level level
        level = level if (1..10).member?(level)
        level = 10 if level >= 10
        level = 0 if level <= 0
        level
    end

    def happiness=(happiness)
       @happiness = set_level(happiness)
    end

    def hygiene=(hygiene)
        @hygiene = set_level(hygiene)
    end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        if topic == 'politics'
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end

end