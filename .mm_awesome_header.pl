if ($^O eq 'MSWin32') {
    my $ver;
    my $err = do {
        local $@;
        eval { require Win32; $ver = Win32::GetOSVersion(); 1; };
        $@;
    };
    if ($err || $ver < 6) {
        die("OS unsupported\nWindows needs to be Win7 or higher.\n");
    }
}
