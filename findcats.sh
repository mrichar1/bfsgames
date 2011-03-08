grep '\\game' * |grep -v games.tex | perl -ne '$_ =~ s/.*:\\game\{.*\}\{(.*)\}/$1/; print $_' |sort | uniq
