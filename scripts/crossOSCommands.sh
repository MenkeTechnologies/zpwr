
getOpenCommand(){
    local open_cmd

    case "$OS_TYPE" in
        darwin*)  open_cmd='open'
          ;;
        cygwin*)  open_cmd='cygstart'
          ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                open_cmd='nohup xdg-open'
            else
                open_cmd='cmd.exe /c start ""'
            fi
            ;;
        msys*)    open_cmd='start ""'
            ;;
        *)        echo "Platform $OS_TYPE not supported"
                    return 1
                    ;;
    esac

    echo "$open_cmd"
}

getPasteCommand(){
    local paste_cmd

    case "$OS_TYPE" in
        darwin*)
            paste_cmd='pbpaste'
            ;;
        cygwin*)
            paste_cmd="powershell.exe -c 'Get-Clipboard'"
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                paste_cmd='xclip -o -sel clip'
            else
                paste_cmd="powershell.exe -c 'Get-Clipboard'"
            fi
            ;;
        msys*)
            paste_cmd="powershell.exe -c 'Get-Clipboard'"
            ;;
        *)
            echo "Platform $OS_TYPE not supported"
            return 1
            ;;
    esac

    echo "$paste_cmd"
}

getCopyCommand(){
    local copy_cmd

    case "$OS_TYPE" in
        darwin*)
            copy_cmd='pbcopy'
            ;;
        cygwin*)
            copy_cmd='clip.exe'
            ;;
        linux*)
            if [[ "$(uname -r)" != *icrosoft* ]];then
                copy_cmd='xclip -i -sel clip'
            else
                copy_cmd='clip.exe'
            fi
            ;;
        msys*)
            copy_cmd='clip.exe'
            ;;
        *)
            echo "Platform $OS_TYPE not supported"
            return 1
            ;;
    esac

    echo "$copy_cmd"
}

export OPEN_CMD="$(getOpenCommand)"
export COPY_CMD="$(getCopyCommand)"
export PASTE_CMD="$(getPasteCommand)"



