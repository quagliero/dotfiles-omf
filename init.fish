# # PATH
#
# # Fish git prompt
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showstashstate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showupstream 1
set -g __fish_git_prompt_color_branch -o white
set -g __fish_git_prompt_color_untrackedfiles -o yellow
set -g __fish_git_prompt_color_prefix -o blue
set -g __fish_git_prompt_color_suffix -o blue
set -g __fish_git_prompt_color_merging -o yellow
set -g __fish_git_prompt_color_cleanstate -o green
set -g __fish_git_prompt_color_dirtystate -o yellow
set -g __fish_git_prompt_color_invalidstate -o red
set -g __fish_git_prompt_color_upstream_ahead -o purple
set -g __fish_git_prompt_color_upstream_behind -o orange

# Status Chars
# set -g __fish_git_prompt_char_dirtystate '⚡'
# set -g __fish_git_prompt_char_stagedstate '→'
# set -g __fish_git_prompt_char_untrackedfiles '!'
# set -g __fish_git_prompt_char_stashstate '↩'
# set -g __fish_git_prompt_char_upstream_ahead '+'
# set -g __fish_git_prompt_char_upstream_behind '-'


function fish_prompt
  set last_status $status
  set_color -o purple
  printf '» '
  set_color -o brcyan
  printf '%s' (basename (prompt_pwd))
  set_color normal
  printf '%s ' (__fish_git_prompt)
  set_color normal
end
