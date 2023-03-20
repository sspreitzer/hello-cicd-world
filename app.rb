#!/usr/bin/env ruby

require 'sinatra'

VERSION = File.open('./VERSION').read.strip

get '/' do
  "Hello #{request.ip} !<BR />You are visiting version: #{VERSION}"
end
