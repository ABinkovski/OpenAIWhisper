echo "add old versions to scoop index"
scoop bucket add versions

echo "verify python versions"
scoop search python

echo "installing python "
#scoop install versions/python39
scoop install python@3.9.13