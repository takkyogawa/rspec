# -*- encoding: utf-8 -*-
# 勉強用。RSpecの実際の作成過程を学ぶ
# http://d.hatena.ne.jp/t-wada/20100228/p1　こちらを参考にした

# NGワードの検出を行うMessageFilterクラスをTDDしていく

$:.unshift File.dirname(__FILE__)

require 'rubygems'
require 'rspec'
require 'message_filter'

describe MessageFilter do
  it 'NGワードを検出できるようにする。' do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello my foo')).to be_true
  end
end