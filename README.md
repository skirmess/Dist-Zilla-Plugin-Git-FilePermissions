# NAME

Dist::Zilla::Plugin::Git::FilePermissions - fix the file permissions in your Git repository with Dist::Zilla

# VERSION

Version 0.001

# SYNOPSIS

    # in dist.ini:
    [Git::FilePermissions]
    perms = ^bin/         0755
    perms = ^scripts/     0755

# DESCRIPTION

This plugin fixes the file permissions of all the files in the Git repository
where your project is saved. Files not in the Git index, and directories, are
ignored.

Without configuration, every file is changed to the default 0644. You can
configure different permissions with the **perms** argument in the `dist.ini`.

The plugin runs in the before build phase, which means it will fix the file
permissions before the files are picked up in the file gather phase. The new
permissions are therefore also the ones used in the build.

## perms

The **perms** configuration option takes the form of:

    perms = REGEX WHITESPACE PERMS

or

    perms = REGEX WHITESPACE -

The **perms** configuration options are processed in order for every file. If
a file matches the **REGEX** the file permissions are changed to the
corresponding **PERMS** instead of the default permissions of 0644. If the
**PERMS** are **-** the file is ignored.

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/skirmess/Dist-Zilla-Plugin-Git-FilePermissions/issues](https://github.com/skirmess/Dist-Zilla-Plugin-Git-FilePermissions/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software. The code repository is available for
public review and contribution under the terms of the license.

[https://github.com/skirmess/Dist-Zilla-Plugin-Git-FilePermissions](https://github.com/skirmess/Dist-Zilla-Plugin-Git-FilePermissions)

    git clone https://github.com/skirmess/Dist-Zilla-Plugin-Git-FilePermissions.git

# AUTHOR

Sven Kirmess <sven.kirmess@kzone.ch>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2017 by Sven Kirmess.

This is free software, licensed under:

    The (two-clause) FreeBSD License

# SEE ALSO

[chmod](https://metacpan.org/pod/chmod)
