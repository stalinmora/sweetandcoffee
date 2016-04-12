SELECT DB_NAME(database_id) AS DatabaseName, database_id, 
OBJECT_NAME(ips.object_id) AS TableName, ips.object_id,
i.name AS IndexName, i.index_id, p.rows,
ips.partition_number, index_type_desc, alloc_unit_type_desc, index_depth, index_level,
avg_fragmentation_in_percent, fragment_count, avg_fragment_size_in_pages, page_count,
avg_page_space_used_in_percent, record_count, ghost_record_count, version_ghost_record_count, min_record_size_in_bytes,
max_record_size_in_bytes, avg_record_size_in_bytes, forwarded_record_count
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL , NULL, 'LIMITED') ips
INNER JOIN sys.indexes i ON i.object_id = ips.object_id AND i.index_id = ips.index_id
INNER JOIN sys.partitions p ON p.object_id = i.object_id AND p.index_id = i.index_id
WHERE avg_fragmentation_in_percent > 10.0 AND ips.index_id > 0 AND page_count > 1000
ORDER BY avg_fragmentation_in_percent DESC