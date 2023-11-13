

# read the json  file
$packages = get-content package.list.json | convertfrom-json

# Loop through the packages and install them

foreach ($package in $packages) {
    $PackageName = $package.name 
    echo "install the $PackageName"
    winget install "$PackageName" --silent
}