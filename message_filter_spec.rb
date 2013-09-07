# -*- encoding: utf-8 -*-
# 勉強用。RSpecの実際の作成過程を学ぶ
# http://d.hatena.ne.jp/t-wada/20100228/p1　こちらを参考にした

# NGワードの検出を行うMessageFilterクラスをTDDしていく

$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do

  context 'with filter foo' do

    # test data
    before do
      @filter = MessageFilter.new('foo')
    end
  
    it{
      expect(@filter).to be_detect('hello my foo')
    }
    
    it{
      expect(@filter).not_to be_detect('hello world')
    }
  
  end
  
end