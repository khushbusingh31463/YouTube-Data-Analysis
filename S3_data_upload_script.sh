# Copies all .json file to different folder raw_stats_ref_data
aws s3 cp . s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/ --recursive --exclude "*" --include "*.json"


# Copies all .csv file to respective location, following Hive style pattern:
aws s3 cp CAvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=ca/
aws s3 cp DEvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=de/
aws s3 cp FRvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=fr/
aws s3 cp JPvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=jp/
aws s3 cp INvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=in/
aws s3 cp KRvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=kr/
aws s3 cp MXvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=mx/
aws s3 cp RUvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=ru/
aws s3 cp USvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=us/
aws s3 cp GBvideos.csv s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=gb/


# Move region=xy folders to new folder i.e. copy and delete
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=ca/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=ca/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=de/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=de/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=fr/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=fr/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=jp/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=jp/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=in/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=in/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=kr/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=kr/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=mx/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=mx/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=ru/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=ru/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=us/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=us/ --recursive
aws s3 cp s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=gb/ s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/region=gb/ --recursive

# Remove files 
aws s3 rm s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_data/ --recursive --exclude "*" --include "CAvideos.csv" --include "DEvideos.csv"


# Remove unwanted files and folder
aws s3 rm s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/ --recursive --exclude "*.json" --include "*" 

aws s3 rm s3://student-de-raw-useast1-dev/youtube_stats_data/raw_stats_ref_data/region=ca/ --recursive



# ------------------- Faster Approach to deal with multiple folders-------------------

# List of folders to delete, each on a new line
# folders=("folder1" "folder2" "folder3")

# # Loop through the list and delete each folder
# for folder in "${folders[@]}"
# do
#    echo "Deleting $folder..."
#    aws s3 rm s3://your-bucket/parent-folder/$folder/ --recursive
# done






