if ($^O eq 'MSWin32') {
    my $ver;
    my $err;
    { # catch block
        local $@;
        # try
        $err = $@ || 'Error' unless eval {
            require Win32;
            $ver = (Win32::GetOSVersion())[1];
            1;
        };
    }
    if ($err || $ver < 6) {
        die("OS unsupported\nWindows needs to be Win7 or higher.\n");
    }
}
elsif ($^O eq 'gnukfreebsd' or $^O eq 'netbsd') {
    die("OS unsupported\n");
}
