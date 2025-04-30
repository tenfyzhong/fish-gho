function open
    echo "open:$argv[1]"
end

@test 'success, github.com' (gho tenfyzhong/fish-gho | string collect) = 'open:https://github.com/tenfyzhong/fish-gho'
@test 'success, deepwiki.com' (gho --deepwiki tenfyzhong/fish-gho | string collect) = 'open:https://deepwiki.com/tenfyzhong/fish-gho'
@test 'success, github.dev' (gho --dev tenfyzhong/fish-gho | string collect) = 'open:https://github.dev/tenfyzhong/fish-gho'

@test 'gho -h' (gho -h | string collect) = 'gho: Open github repo
Usage: gho <opts> REPO

Options:
  --deepwiki              Open in deepwiki.com
  --dev                   Open in github.dev
  -h/--help               Print this help message'
