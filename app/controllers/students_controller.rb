class StudentsController < ApplicationController

def index

end

    def first
        @first = Student.group(:First).count
        @t = @first
    end

    def middle
            @middle = Student.group(:MI).count
            @t = @middle
    end

    def last
        @last = Student.group(:Last).count
        @t = @last
    end

    def prefix
        @prefix = Student.group(:Prefix).count
        @t = @prefix
    end

    def city
       @city= Student.group(:City).count
       @t = @city
    end

  def state
    @states = Student.group(:State).count
    @t = @states
  end

    def zip_code
        @zip =Student.group(:Zip).count
        @t = @zip
    end

    def address1
        @address1  = Student.group(:Address1).count
        @t = @address1
    end

    def address2
        @address2 = Student.group(:Address2).count
        @t = @address2
    end

  def education
     @education = Student.group(:Education).count
     @t = @education
  end

  def income
        @income = Student.group(:Income).count
        @t = @income
  end

  \
end
