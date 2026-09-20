_gitman_completion()
{
    local command command_index=-1 i repository_start
    local current_prefix typed_repository repository

    COMPREPLY=()

    # Find the subcommand, skipping gitman options.
    for ((i = 1; i <= COMP_CWORD; i++)); do
        case "${COMP_WORDS[i]}" in
            -*) ;;
            *)
                command=${COMP_WORDS[i]}
                command_index=$i
                break
                ;;
        esac
    done

    # Complete the subcommand.
    if ((command_index == -1 || COMP_CWORD == command_index)); then
        COMPREPLY=($(compgen -W 'add update run remove list help' -- "${COMP_WORDS[COMP_CWORD]}"))
        return
    fi

    case "$command" in
        run|remove)
            repository_start=$((command_index + 1))
            ((COMP_CWORD >= repository_start)) || return

            # ':' is normally in COMP_WORDBREAKS, so URLs such as https://...
            # are split across COMP_WORDS. Reconstruct the repository argument
            # and return only the portion Readline is replacing.
            current_prefix=
            for ((i = repository_start; i < COMP_CWORD; i++)); do
                current_prefix+=${COMP_WORDS[i]}
            done
            typed_repository=${current_prefix}${COMP_WORDS[COMP_CWORD]}

            while IFS= read -r repository; do
                [[ $repository == "$typed_repository"* ]] || continue
                COMPREPLY+=("${repository#"$current_prefix"}")
            done < <(gitman list 2>/dev/null | awk '{print $2}')
            ;;
    esac
}

complete -F _gitman_completion gitman
