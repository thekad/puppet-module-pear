Overview
========

Module to manage PHP pear libraries in standard and non-standard directories.


Install
-------

Install in `<module_path>/pear`


PHP (PEAR)
----------

Example usage:

    package {
        'php-mbstring':
            ensure => installed;
    }

    include pear

    pear::lib {
        'Proj1::Archive_Zip':
            package  => 'Archive_Zip',
            ensure   => latest,
            localdir => '/var/www/sites/proj1/pear',
        'File_Mogile':
            ensure   => '0.2.0',
            localdir => '/var/www/sites/proj1/pear',
            require  => Package['php-mbstring'];
        'System::Archive_Zip':
            package  => 'Archive_Zip',
            ensure   => absent;
    }


Disclaimer
==========

This program is free software. It comes without any warranty, to
the extent permitted by applicable law. You can redistribute it
and/or modify it under the terms of the Do What The Fuck You Want
To Public License, Version 2, as published by Sam Hocevar. See
<http://sam.zoy.org/wtfpl/COPYING> for more details.

