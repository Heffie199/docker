SELECT
    id ,
    title ,
    abstracts ,
    content ,
    post_time ,
    click_count ,
    author,
    create_time,
    update_time
FROM
    article
WHERE
    update_time >=date_add(:sql_last_value,interval 8 hour)