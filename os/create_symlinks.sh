#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

create_symlinks() {

    declare -a FILES_TO_SYMLINK=(
        "git/gitconfig"
        "zsh/zshenv"
        "zsh/zshrc"
    )

    local i=""
    local sourceFile=""
    local targetFile=""

    for i in "${FILES_TO_SYMLINK[@]}"; do

        sourceFile="$(cd .. && pwd)/$i"
        targetFile="$HOME/.$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

        if [ ! -e "$targetFile" ]; then

	    ln -fs $sourceFile $targetFile
	    echo "$targetFile → $sourceFile"

        elif [ "$(readlink "$targetFile")" == "$sourceFile" ]; then
            echo "$targetFile → $sourceFile"
        fi

    done

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {
    echo "\n • Create symbolic links\n\n"
    create_symlinks "$@"
}

main "$@"
