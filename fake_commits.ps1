# Create and enter the repo
cd fake-fyp

# Loop to make 12 commits spaced 2 weeks apart
for ($i = 0; $i -lt 12; $i++) {
    $date = (Get-Date "2023-11-01").AddDays($i * 14).ToString("yyyy-MM-ddTHH:mm:ss")
    Add-Content progress.md "Progress update $i on $date"
    git add progress.md
    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date
    git commit -m "Progress update $i"
}
