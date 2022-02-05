# Query 1
# Get the id values of the first 5 clients from district_id with a value equals to 1.
SELECT 
	CLIENT_ID, DISTRICT_ID 
FROM 
	CLIENT 
WHERE 
	DISTRICT_ID REGEXP "^1$" 
ORDER BY 
	CLIENT_ID ASC 
LIMIT 
	5;
    
# Query 2
# In the client table, get an id value of the last client where the district_id equals to 72.

SELECT * FROM CLIENT WHERE DISTRICT_ID = "72" ORDER BY CLIENT_ID DESC LIMIT 1;

# Query 3
# Get the 3 lowest amounts in the loan table.
SELECT * FROM LOAN ORDER BY AMOUNT ASC LIMIT 3;

# Query 4
# What are the possible values for status, ordered alphabetically in ascending order in the loan table?
SELECT DISTINCT STATUS FROM LOAN ORDER BY STATUS ASC;

# Query 5
# What is the loan_id of the highest payment received in the loan table?
SELECT LOAN_ID, PAYMENTS FROM LOAN ORDER BY PAYMENTS DESC LIMIT 1;

# Query 6
# What is the loan amount of the lowest 5 account_ids in the loan table? Show the account_id and the corresponding amount
SELECT AMOUNT, ACCOUNT_ID FROM LOAN ORDER BY ACCOUNT_ID ASC LIMIT 5;
# 6415

# Query 7
# What are the account_ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT ACCOUNT_ID, AMOUNT FROM LOAN WHERE DURATION = "60" ORDER BY AMOUNT ASC;

# Query 8
# What are the unique values of k_symbol in the order table?
# Note: There shouldn't be a table name order, since order is reserved from the ORDER BY clause. 
# You have to use backticks to escape the order table name.
SELECT DISTINCT K_SYMBOL FROM `ORDER`;

# Query 9
# In the order table, what are the order_ids of the client with the account_id 34?
SELECT ORDER_ID FROM `ORDER` WHERE ACCOUNT_ID = "34";

#Query 10
# In the order table, which account_ids were responsible for orders between order_id 29540 and order_id 29560 (inclusive)?
SELECT DISTINCT ACCOUNT_ID FROM BANK.ORDER WHERE ORDER_ID BETWEEN 29540 AND 29560;

# Query 11
# In the order table, what are the individual amounts that were sent to (account_to) id 30067122?
SELECT AMOUNT FROM BANK.ORDER WHERE ACCOUNT_TO = "30067122";

# Query 12
# In the trans table, show the trans_id, date, type and amount of the 10 first transactions from account_id 793 in chronological order, 
# from newest to oldest.
SELECT TRANS_ID, DATE, TYPE, AMOUNT FROM TRANS WHERE ACCOUNT_ID = "793" ORDER BY DATE DESC LIMIT 10;

# Query 13
# In the client table, of all districts with a district_id lower than 10, 
# how many clients are from each district_id? Show the results sorted by the district_id in ascending order.
SELECT * FROM CLIENT WHERE DISTRICT_ID < 10 GROUP BY DISTRICT_ID ORDER BY DISTRICT_ID ASC;

