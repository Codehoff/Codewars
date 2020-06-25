def duplicate_count(text)
    down = text.downcase.split("")
    down.uniq.count { |c| down.count(c) > 1 }
  end