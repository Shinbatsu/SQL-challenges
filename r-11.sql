SELECT name,CAST(''AS XML).value('xs:base64Binary(
sql:column("X"))', 'varchar(max)') AS _
FROM(SELECT name,cast(name AS varbinary(MAX)) X
FROM ships)exstfysadsbfdnisojfoinjsni