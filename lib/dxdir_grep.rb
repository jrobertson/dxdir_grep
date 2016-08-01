#!/usr/bin/env ruby

# file: dxdir_grep.rb

require 'dir-to-xml'


class DxDirGrep
  
  def initialize(path:'.', ext: '.txt')
    
    dtx = DirToXML.new path
    @dx = dtx.select_by_ext(ext)
    
  end

  def grep(pattern='')
    
    a = @dx.sort_by_lastmodified.reverse.inject([]) do |r,x|

      name = x[:name]

      s = File.read name
      i = s =~ /#{pattern}/m


      if i then
        i_start = (i - 30) > 0 ? i - 30 : 0
        r << {name: name, preview: s.slice(i_start, 100)}
      else
        r
      end
    end
    
    dx = Dynarex.new json_out: false
    dx.import a
    
    return dx
  end
  
end
