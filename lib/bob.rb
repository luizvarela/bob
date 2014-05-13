require "bob/version"

class Bob
  def hey(string)
    bob_say(string)
  end

  def bob_say(something)
    if yell?(something)
      'Woah, chill out!'
    elsif question?(something)
      'Sure.'
    elsif silence?(something)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  private

  def yell?(something)
    something == something.upcase && !is_number?(something)
  end

  def question?(something)
    something.end_with?('?')
  end

  def silence?(something)
    something.strip.empty?
  end

  def is_number?(string)
    !string.match(/[a-zA-Z]/)
  end
end
