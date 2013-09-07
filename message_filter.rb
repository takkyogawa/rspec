# -*- encoding: utf-8 -*-
# 勉強用。RSpecの実際の作成過程を学ぶ

class MessageFilter

  def initialize(word)
    @word = word
  end
  
  def detect?(text)
    true
  end  
  
end