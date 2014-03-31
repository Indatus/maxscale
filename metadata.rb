name             'maxscale'
maintainer       'Indatus'
maintainer_email 'bwebb@indatus.com'
license          'All rights reserved'
description      'Installs/Configures maxscale'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
%w{ rhel }.each do |os|
  supports os
end