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
git checkout newFeature
git rebase master
```

``` shell
# check status of all branches and remotes
git branch -avvv

# Switch remote tracking branch
git branch -u <remote>/<branch>
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

Sign a file (detached signature)

```shell
gpg --detach-sig signme.txt
```

Verify a signature
```
gpg --verify signme.txt.sig
```

Encrypt with a public key

```shell
gpg --encrypt --recipient foo@bar.com
```

Encrypt with a passphrase

``` shell
gpg --symmetric encryptme.txt
```
