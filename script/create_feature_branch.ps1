param (
    [string]$BranchName
)

git checkout features
git pull origin features
git checkout -b $BranchName

#cd script
# ./create_feature_branch.sh login-screen