## lsコマンド結果の配色
export LSCOLORS=Gxfxcxdxbxegedabagacad

## rbenv init setting
status --is-interactive; and source (rbenv init -|psub)
set PATH  ~/.rbenv/shims:/usr/local/bin $PATH

## npm setting
set PAHT ~/.npm-global/bin $PATHset -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths

## pkg setting
set -gx PKG_CONFIG_PATH "/usr/local/opt/icu4c/lib/pkgconfig"

## compiler setting
set -gx LDFLAGS "-L/usr/local/opt/icu4c/lib"
set -gx CPPFLAGS "-I/usr/local/opt/icu4c/include" 

if status --is-interactive
    abbr --add --global b     'bundle'
    abbr --add --global bi    'bundle install'
    abbr --add --global bx    'bundle exec'
    abbr --add --global clean 'git branch --merged|egrep -v "\*|develop|master"|xargs git branch -d'
    abbr --add --global ga    'git add'
    abbr --add --global gb    'git branch'
    abbr --add --global gc    'git commit -v'
    abbr --add --global gco   'git checkout'
    abbr --add --global gst   'git status'
    abbr --add --global gl    'git log -p --stat'

    # abbr --add --global graph 'log --pretty=format:'%Cgreen[%cd] %Cblue%h %Cred<%cn> %Creset%s' --date=short  --decorate --graph --branches --tags'
    abbr --add --global pr    'gh pr checkout'
end
