#!/bin/sh

# install perlbrew on a systsem

\wget -O - http://install.perlbrew.pl | bash
echo 'source ~/perl5/perlbrew/etc/bashrc' >> ~/.bash_profile
echo 'logoff and logon again - start installation'
