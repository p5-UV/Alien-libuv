# NAME

Alien::libuv - Interface to the libuv library [http://libuv.org](http://libuv.org)

# SYNOPSIS

In your `Makefile.PL`:

    use strict;
    use warnings;

    use ExtUtils::MakeMaker;
    use Config;
    use Alien::libuv;

    WriteMakefile(
      ...
      CONFIGURE_REQUIRES => {
        'Alien::libuv' => '1.000',
      },
      CCFLAGS => Alien::libuv->cflags . " $Config{ccflags}",
      LIBS    => [ Alien::libuv->libs ],
      ...
    );

# DESCRIPTION

This package can be used by other [CPAN](https://metacpan.org) modules that
require [libuv](http://libuv.org).

# AUTHOR

Chase Whitener <`capoeirab@cpan.org`>

# CONTRIBUTORS

Graham Ollis <`plicease@cpan.org`>

# COPYRIGHT & LICENSE

Copyright (c) 2017 Chase Whitener. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
