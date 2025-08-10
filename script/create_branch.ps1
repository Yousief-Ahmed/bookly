param (
    [string]$BaseBranch,
    [string]$NewBranch
)

# التحويل إلى الفرع الأساسي
git checkout $BaseBranch

# تحديثه من الريموت
git pull origin $BaseBranch

# إنشاء الفرع الجديد والتحويل إليه
git checkout -b $NewBranch

Write-Output "✅ branch created  '$NewBranch' from '$BaseBranch' "

#.\script\create_branch.ps1 -BaseBranch home-screen -NewBranch item-list