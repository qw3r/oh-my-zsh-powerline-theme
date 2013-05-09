# FreeAgent puts the powerline style in zsh !

ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✘"
ZSH_THEME_GIT_PROMPT_ADDED=" %F{green}✚%F{white}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %F{blue}✹%F{white}"
ZSH_THEME_GIT_PROMPT_DELETED=" %F{red}✖%F{white}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %F{yellow}✭%F{white}"
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"

ZSH_THEME_GIT_PROMPT_PREFIX=" \ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_AHEAD=" ⬆"
ZSH_THEME_GIT_PROMPT_BEHIND=" ⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED=" ⬍"

POWERLINE_SEC1_BG=%k
if [ $(id -u) -eq 0 ]; then
    POWERLINE_SEC1_FG=%F{red}
    POWERLINE_PROMPT='# '
else
    POWERLINE_SEC1_FG=%F{green}
    POWERLINE_PROMPT='$ '
fi

if [ "$POWERLINE_DETECT_SSH" != "" ]; then
  if [ -n "$SSH_CLIENT" ]; then
    POWERLINE_SEC1_BG=%K{red}
    POWERLINE_SEC1_FG=%F{white}
  fi
fi

PROMPT="%k%F{blue}%d "$POWERLINE_SEC1_BG$POWERLINE_SEC1_FG$POWERLINE_PROMPT"%k%f"
RPROMPT="%f%k"$'$(git_prompt_info)$(git_prompt_status)'" %F{red}"$'$(rvm-prompt)'"%f%k"

