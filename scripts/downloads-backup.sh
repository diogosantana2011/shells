# /bin/bash
scrdir="Downloads"
targetdir="Backups"
targetfile="downloads-$(date -I)-archive.tgz"

cd ~
# ls
cd $scrdir
# pwd
{
    if [[ -d $targetdir ]]; then
        echo "$targetdir exist."
    else
        echo "$targetdir dir does not exist."
        mkdir $targetdir
        echo "$targetdir dir diretory created."
    fi
} || {
    echo 'Error occurred while checking directory.'
}

# Get all directory details
# stat -x Downloads/
downloadDir_modified_date=$(date -r ~/. +"%H:%M:%S")
# timeNow=$(date +"%H:%M:%S")
dateNow=$(date +"%H:%M:%S")

# echo $downloadDir_modified_date
# echo $dateNow

if [ "$dateNow" > "$downloadDir_modified_date" ]; then
    zip -r Backups/downloadsBackup.zip ~/Downloads
    cd Backups/
    stat -x downloadsBackup.zip
else 
    echo "Back up not created."
fi

echo "Script completed. $scrdir backed up into $targetdir ; with date: $(date +"%d-%m-%Y @%H:%M:%S")"