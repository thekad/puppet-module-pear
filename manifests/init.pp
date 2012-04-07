# -*- mode: puppet; sh-basic-offset: 4; indent-tabs-mode: nil; coding: utf-8 -*-
# vim: tabstop=4 softtabstop=4 expandtab shiftwidth=4 fileencoding=utf-8

class pear {

    $pear_program = '/usr/bin/pear'

    @package {
        'php-pear':
            ensure => present,
            tag    => 'pear';
    }
}

