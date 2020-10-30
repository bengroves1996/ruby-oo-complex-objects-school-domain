class School
    attr_reader :roster
    attr_accessor :student, :grades

    def initialize(roster)
        @roster = roster
        @roster = {}
    end 

    def add_student(student, grades)
        if @roster.key?(grades) == false
           @roster[grades] = []
           @roster[grades].append(student)
        elsif grades == 9
            @roster[grades].append(student)
        elsif grades == 10
            @roster[grades].append(student)
        elsif grades == 11
            @roster[grades].append(student)
        else
            @roster[grades].append(student)
        end 
    end
    def grade (grades)
        return @roster[grades]
    end 

    def sort 
        bin1 = []
        bin2 = []
        @roster.each do |standing, names|
            x = names.sort
            bin2.append(standing)
            bin1.append(x)
        end 
        switch = bin2.sort
        long =  "{#{switch[0]}=> #{bin1[0]}, #{switch[1]}=> #{bin1[1]}, #{switch[2]}=> #{bin1[2]}"
        return long 


    end 
end 
