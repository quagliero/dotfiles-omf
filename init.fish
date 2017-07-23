# PATH

# COLOUR PALETTE #
# SMYCK #
# Named colors #
# black '#000000'
# red '#c75646'
# green '#8eb33b'
# yellow '#d0b03c'
# blue '#72b3cc'
# magenta '#c8a0d1'
# cyan '#218693'
# white '#b0b0b0'
# brblack '#5d5d5d'
# brred '#e09690'
# brgreen '#cdee69'
# bryellow '#ffe377'
# brblue '#9cd9f0'
# brmagenta '#fbb1f9'
# brcyan '#77dfd8'
# brwhite '#f7f7f7'

#fish_color_normal, the default color
set -U fish_color_normal brWhite
# #fish_color_command, the color for commands
set -U fish_color_command brmagenta
# #fish_color_quote, the color for quoted blocks of text
set -U fish_color_quote blue
# #fish_color_redirection, the color for IO redirections
set -U fish_color_redirection brcyan
# #fish_color_end, the color for process separators like ';' and '&'
set -U fish_color_end brgreen
# #fish_color_error, the color used to highlight potential errors
set -U fish_color_error red
# #fish_color_param, the color for regular command parameters
set -U fish_color_param bryellow
# #fish_color_comment, the color used for code comments
set -U fish_color_comment white
# #fish_color_match, the color used to highlight matching parenthesis
set -U fish_color_match magenta
# #fish_color_search_match, the color used to highlight history search matches
set -U fish_color_search_match brblack
# #fish_color_operator, the color for parameter expansion operators like '*' and '~'
set -U fish_color_operator brcyan
# #fish_color_escape, the color used to highlight character escapes like '\n' and '\x70'
set -U fish_color_escape brred
# #fish_color_cwd, the color used for the current working directory in the default prompt
set -U fish_color_cwd brgreen
# #fish_color_autosuggestion, the color used for autosuggestions
set -U fish_color_autosuggestion white
# #fish_color_user, the color used to print the current username in some of fish default prompts
# #fish_color_host, the color used to print the current host system in some of fish default prompts
# #fish_color_cancel, the color for the '^C' indicator on a canceled command
set -U fish_color_cancel brred
# #fish_pager_color_prefix, the color of the prefix string, i.e. the string that is to be completed
set -U fish_pager_color_prefix green
# #fish_pager_color_completion, the color of the completion itself
set -U fish_pager_color_completion blue
# #fish_pager_color_description, the color of the completion description
set -U fish_pager_color_description blue
#fish_pager_color_progress, the color of the progress bar at the bottom left corner
#fish_pager_color_secondary, the background color of the every second completion

# Fish git prompt
set -U __fish_git_prompt_show_informative_status 1
set -U __fish_git_prompt_showcolorhints 1
set -U __fish_git_prompt_showdirtystate 1
set -U __fish_git_prompt_showstashstate 1
set -U __fish_git_prompt_showuntrackedfiles 1
set -U __fish_git_prompt_showupstream 1
set -g __fish_git_prompt_color_branch brwhite
set -g __fish_git_prompt_color_untrackedfiles -o yellow
# set -g __fish_git_prompt_color_prefix -o '#aaa'
# set -g __fish_git_prompt_color_suffix -o '#aaa'
set -g __fish_git_prompt_color_merging -o yellow
set -g __fish_git_prompt_color_cleanstate -o brgreen
set -g __fish_git_prompt_color_dirtystate -o yellow
set -g __fish_git_prompt_color_invalidstate -o red
set -g __fish_git_prompt_color_upstream_ahead -o purple
set -g __fish_git_prompt_color_upstream_behind -o brred

# Status Chars
# set -g __fish_git_prompt_char_dirtystate '⚡'
# set -g __fish_git_prompt_char_stagedstate '→'
# set -g __fish_git_prompt_char_untrackedfiles '!'
# set -g __fish_git_prompt_char_stashstate '↩'
# set -g __fish_git_prompt_char_upstream_ahead '+'
# set -g __fish_git_prompt_char_upstream_behind '-'

function fish_prompt
  set last_status $status
  set_color -o '#FF2E88'
  printf '❤ '
  set_color blue
  printf '%s' (basename (prompt_pwd))
  set_color -o normal
  printf '%s ' (__fish_git_prompt)
  set_color normal
end
