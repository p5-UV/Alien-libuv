on 'runtime' => sub {
    requires 'perl' => '5.008001';
    requires 'strict';
    requires 'warnings';
    requires 'base';
    requires 'Alien::Base';
};

on 'build' => sub {
    requires 'Alien::Base';
    requires 'Alien::Build';
    requires 'Alien::Build::MM';
    requires 'Alien::Build::Plugin::Build::Autoconf';
    #requires 'Alien::libtool24';
    requires 'Config';
    requires 'ExtUtils::MakeMaker';
    requires 'IPC::Cmd';
};

on 'test' => sub {
    requires 'Test::Alien';
    requires 'Test::More' => '0.88';
    requires 'Test2::Suite';
};

on 'develop' => sub {
    requires 'Test::CheckManifest' => '1.29';
    requires 'Test::CPAN::Changes' => '0.4';
    requires 'Test::Kwalitee'      => '1.22';
    requires 'Test::Pod::Spelling::CommonMistakes' => '1.000';
};