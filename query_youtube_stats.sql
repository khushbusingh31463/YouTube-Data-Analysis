-- Display reference data for youtube statistical data extracted from json file into parquet file
SELECT * FROM "AwsDataCatalog"."de_youtube_raw"."clean_stats_ref_data" limit 5;

-- Display the Youtube statistical data for .csv files
SELECT * FROM "AwsDataCatalog"."de_youtube_raw"."raw_stats_data" limit 5;

-- Filter records on the partition created on based of region 
SELECT * FROM "AwsDataCatalog"."de_youtube_raw"."raw_stats_data" 
where region ='ca' 
limit 5 ;

-- Join reference stats table and youtube stats table on id and category_id columns
SELECT stats.category_id,stats.title, ref.snippet_titel, stats.views,stats.likes,stats.comment_count
FROM "de_youtube_raw"."raw_stats_data" as stats 
INNER JOIN "de_youtube_raw"."clean_stats_ref_data" as ref 
ON stats.category_id = ref.id

-- Top 5 records based on view, likes, and comment count
SELECT 
    stats.category_id,
    stats.title,
    ref.snippet_title,
    stats.views,
    stats.likes,
    stats.comment_count
FROM 
    "de_youtube_raw"."raw_stats_data" as stats 
INNER JOIN 
    "de_youtube_raw"."clean_stats_ref_data" as ref 
ON 
    stats.category_id = ref.id
ORDER BY 
    stats.views DESC, 
    stats.likes DESC, 
    stats.comment_count DESC
LIMIT 5;

"""
Trending_score is a composite metric calculated by summing the views, likes, and comment counts.
You can adjust the weights of views, likes, and comments in the 
trending_score calculation if you want to give different importance 
to each metric."""
SELECT 
    stats.category_id,
    stats.title,
    ref.snippet_title,
    stats.views,
    stats.likes,
    stats.comment_count,
    (2 * stats.views + 2 * stats.likes + stats.comment_count) as trending_score
FROM 
    "de_youtube_raw"."raw_stats_data" as stats 
INNER JOIN 
    "de_youtube_raw"."clean_stats_ref_data" as ref 
ON 
    stats.category_id = ref.id
ORDER BY 
    trending_score DESC
LIMIT 5;
