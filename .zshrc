# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi


# source /usr/local/opt/zinit/zinit.zsh
# source /usr/local/opt/asdf/libexec/asdf.sh
# wsl
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source /home/linuxbrew/.linuxbrew/opt/zinit/zinit.zsh
source /home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh
# mac 用
# eval "$(/opt/homebrew/bin/brew shellenv)"
# eval "$(direnv hook zsh)"
# source /opt/homebrew/opt/zinit/zinit.zsh
# source /opt/homebrew/opt/asdf/libexec/asdf.sh

# zshのプラグインの有効化
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
# zinit ice depth=1; zinit light romkatv/powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# 下記PATH設定は、macだとctagsが既存が優先されるので、必要だが、wslだとuniversal-ctagsが認識されるので不要
export PATH=$PATH:/usr/local/Cellar/universal-ctags/p6.0.20230924.0/bin
eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.zsh_func ] && source  ~/.zsh_func

#  rustc --version などを実行して rust がインストール済みなら下記は不要
# export RUBY_CONFIGURE_OPTS="--enable-yjit"
