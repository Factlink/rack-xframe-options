# encoding: utf-8
$TESTING=true

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
$:.unshift File.expand_path(File.join(File.dirname(__FILE__)))

require 'rubygems'
require 'rack/test'

require 'rack-xframe-options'