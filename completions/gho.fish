complete gho -f

if functions -q compbase
    complete gho -a "(compbase item -t gho -l)"
end

complete gho -l deepwiki -d 'Open in deepwiki.com'
complete gho -l dev -d 'Open in deepwiki.com'
complete gho -s h -l help -d 'Print this help message'
