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
