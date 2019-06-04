require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @the_number = params[:number]
    @answer = @the_number.to_i ** 2
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @the_number = params[:number].to_i
    @the_phrase = params[:phrase]
    "#{@the_phrase}" * @the_number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one}" + " " + "#{@word_two}" + " " + "#{@word_three}" + " " + "#{@word_four}" + " " + "#{@word_five}" + "."
  end

  get '/:operation/:number1/:number2' do
    @the_operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @the_operation == "add"
      @sum = @num1 + @num2
      "#{@sum}"
    elsif @the_operation == "subtract"
      @answer = @num2 - @num1
      "#{@answer}"
    elsif @the_operation == "multiply"
      @product = @num1 * @num2
      "#{@product}"
    else @the_operation == "divide"
      @quotient = @num1 / @num2
      "#{@quotient}"
    end
  end

end
