function gho --description 'Open github repo'
    argparse 'deepwiki' 'dev' 'h/help' -- $argv 2>/dev/null
    if test $status -ne 0
        return 1
    end

    if set -q _flag_help
        _gho_help
        return 0
    end

    if test -z "$argv"
        return 2
    end

    set repo "$argv[1]"

    set url ""

    if set -q _flag_deepwiki
        set url "https://deepwiki.com/$repo"
    else if set -q _flag_dev
        set url "https://github.dev/$repo"
    else
        set url "https://github.com/$repo"
    end

    open "$url"

    if functions -q compbase
        compbase item -t gho -a -D "https://github.com/$repo" "$repo"
    end
end

function _gho_help
    printf %s\n\
        'gho: Open github repo'\
        'Usage: gho <opts> REPO'\
        ''\
        'Options:'\
        '  --deepwiki              Open in deepwiki.com'\
        '  --dev                   Open in github.dev'\
        '  -h/--help               Print this help message'
end
