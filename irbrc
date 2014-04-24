require 'irb/completion'
require 'pp'
require 'rubygems'
 
# wirble is amazing
require 'wirble'
Wirble.init
Wirble.colorize
 
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE
