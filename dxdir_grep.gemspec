Gem::Specification.new do |s|
  s.name = 'dxdir_grep'
  s.version = '0.1.1'
  s.summary = 'Grep a file directory.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/dxdir_grep.rb']
  s.add_runtime_dependency('dir-to-xml','~> 0.8', '>=0.8.1') 
  s.signing_key = '../privatekeys/dxdir_grep.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/dxdir_grep'
end
