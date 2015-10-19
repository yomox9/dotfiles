# ~/.bash_logout

#auto git push
pushd ~/dotfiles && gitpush.sh &
pushd ~/y9tool && gitpush.sh &
#kill ssh-agent
ssh-agent -k
