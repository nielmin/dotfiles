#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -e /home/dawh/.nix-profile/etc/profile.d/nix.sh ]; then . /home/dawh/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
