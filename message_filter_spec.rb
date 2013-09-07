# -*- encoding: utf-8 -*-
# 勉強用。RSpecの実際の作成過程を学ぶ
# http://d.hatena.ne.jp/t-wada/20100228/p1　こちらを参考にした

# NGワードの検出を行うMessageFilterクラスをTDDしていく

$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do

  # test data
  before do
    @filter = MessageFilter.new('foo')
  end

  it 'NGワードを検出できるようにする。#for fake it' do
    expect(@filter.detect?('hello my foo')).to be_true
  end
  
  it 'フィルタに一致しないとfalseを返す。#for triangulation' do
    expect(@filter.detect?('hello world')).to be_false
  end
  
end