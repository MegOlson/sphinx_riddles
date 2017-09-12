class Riddles
  def initialize(str1, str2, str3)
    @str1 = str1
    @str2 = str2
    @str3 = str3
  end
  def result
    if @str1 == "correct" && @str2 == "correct" && @str3 == "correct"
      return true
    else
      return false
    end
  end
end
