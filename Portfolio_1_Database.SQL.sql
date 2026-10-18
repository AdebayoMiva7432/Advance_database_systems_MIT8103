{\rtf1\ansi\ansicpg1252\cocoartf2870
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww12920\viewh16240\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
-- MIT8103 Advanced Database Systems\
-- Portfolio 1: Database Design and Modelling\
-- PostgreSQL database inspection script\
\
-- 1. Inspect all columns in the public schema\
SELECT\
    table_name,\
    ordinal_position,\
    column_name,\
    data_type,\
    is_nullable,\
    column_default\
FROM information_schema.columns\
WHERE table_schema = 'public'\
ORDER BY table_name, ordinal_position;\
\
\
-- 2. Inspect constraints and foreign key relationships\
SELECT\
    tc.table_name,\
    tc.constraint_name,\
    tc.constraint_type,\
    kcu.column_name,\
    ccu.table_name AS referenced_table,\
    ccu.column_name AS referenced_column\
FROM information_schema.table_constraints AS tc\
LEFT JOIN information_schema.key_column_usage AS kcu\
    ON tc.constraint_name = kcu.constraint_name\
    AND tc.table_schema = kcu.table_schema\
    AND tc.table_name = kcu.table_name\
LEFT JOIN information_schema.constraint_column_usage AS ccu\
    ON tc.constraint_name = ccu.constraint_name\
    AND tc.table_schema = ccu.table_schema\
    AND tc.table_name = ccu.table_name\
WHERE tc.table_schema = 'public'\
ORDER BY tc.table_name, tc.constraint_type, tc.constraint_name;\
\
\
-- 3. List all public tables\
SELECT\
    table_name\
FROM information_schema.tables\
WHERE table_schema = 'public'\
  AND table_type = 'BASE TABLE'\
ORDER BY table_name;\
\
\
-- 4. View the first 10 customer records\
SELECT\
    customer_id,\
    name,\
    email,\
    phone\
FROM public.customers\
ORDER BY customer_id\
LIMIT 10;\
\
\
-- 5. Count customer records\
SELECT COUNT(*) AS total_customers\
FROM public.customers;\
\
\
-- 6. Count missing customer field values\
SELECT\
    COUNT(*) FILTER (WHERE customer_id IS NULL)\
        AS missing_customer_ids,\
    COUNT(*) FILTER (WHERE name IS NULL)\
        AS missing_names,\
    COUNT(*) FILTER (WHERE email IS NULL)\
        AS missing_emails,\
    COUNT(*) FILTER (WHERE phone IS NULL)\
        AS missing_phone_numbers\
FROM public.customers;\
\
\
-- 7. Identify duplicate non-null email addresses\
SELECT\
    email,\
    COUNT(*) AS occurrences\
FROM public.customers\
WHERE email IS NOT NULL\
GROUP BY email\
HAVING COUNT(*) > 1\
ORDER BY email;\
}
