class Calculator
  def initialize(model)
    @version = '0.0.1'
    @model = model
    @result = 0
  end

  def manual
    puts 'Model: ' + @model
    puts 'Version: ' + @version
  end

  def sum(first_number, second_number = 0)
    @first_number = first_number
    @second_number = second_number

    checkResult()

    @result = @first_number + @second_number

    return @result
  end

  def sub(first_number, second_number = 0)
    @first_number = first_number
    @second_number = second_number

    checkResult()

    @result = @first_number - @second_number

    return @result
  end

  def multiplication(first_number, second_number = 0)
    @first_number = first_number
    @second_number = second_number

    checkResult()

    @result = @first_number * @second_number

    return @result
  end

  def div(first_number, second_number = 0)
    @first_number = first_number
    @second_number = second_number

    checkResult()

    @result = @first_number.to_f / @second_number.to_f

    return @result
  end

  def cancel
    @result = 0
  end


  # Private Methods
    def checkResult
      if @result != 0
        @second_number = @first_number
        @first_number = @result
      end
    end

  private :checkResult
end
