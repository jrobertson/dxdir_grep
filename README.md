# Introducing the dxdir_grep gem

    require 'dxdir_grep'

    ddg = DxDirGrep.new()
    dx = ddg.grep 'rexle-xpath'
    dx.all.each do |x|
      puts "%s %s" % [x.name, x.preview[20..-30].inspect]
    end

Output (extract):

<pre>
notes310716.txt "i = s =~ /rexle-xpath/\n  puts 'r: ' + r.inspect\n  i"
notes180716.txt "---------\nrexle-xpath. Do all the tests pass? Why n"
notes110716.txt ".require 'rexle-xpath-parser'}\n\nrxp = RexleXPathPar"
notes100716.txt ".require 'rexle-xpath-parser'}\n\nrxp = RexleXPathPar"
...
</pre>

Notes:

* Initialize can accept the named keywords *path* and *ext*
* The dir.xml file is saved in the current file directory
* A Dynarex object is returned from the call to DxDirGrep#grep.

## Resources

* dxdir_grep https://rubygems.org/gems/dxdir_grep

dxdir_grep dir_to_xml dir search grep
