# Cheatsheet

## Git

``` shell
# Fetch upstream master and merge with your repo's master branch
git fetch upstream
git checkout master
git merge upstream/master
```

``` shell
# If there were any new commits, rebase your development branch
git checkout newfeature
git rebase master
```

``` shell
# check status of all branches and remotes
git branch -avvv
```

``` shell
# delete branch and remote
git branch -d foo
git push origin -d foo
```

## GPG 
Renew - https://gist.github.com/krisleech/760213ed287ea9da85521c7c9aac1df0

Revoke - https://superuser.com/questions/1526283/how-to-revoke-a-gpg-key-and-upload-in-gpg-server

Backup and Restore - https://www.howtogeek.com/816878/how-to-back-up-and-restore-gpg-keys-on-linux/