COPY sales_data
FROM 's3://your-bucket-name/parquet-data/'
IAM_ROLE 'arn:aws:iam::your-account-id:role/your-redshift-role'
FORMAT AS PARQUET;
