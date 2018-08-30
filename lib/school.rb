# code here!
class School

    attr_reader :roster,:name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(students,grade)
        # puts students
        if @roster.has_key?(grade)
            @roster[grade] += students.split("\n")
        else
            @roster[grade] = [students]
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        @roster = Hash[@roster.sort.map {|a,b| [a,b.sort]}]
    end
end
