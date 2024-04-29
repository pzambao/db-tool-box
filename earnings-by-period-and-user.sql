-- Rendimento por período e usuário

SELECT
  user,
  date_trunc('month', transaction_date) AS period, 
  SUM(transaction_value) AS total_earnings
FROM
  transaction_table
WHERE
  transaction_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
  user, date_trunc('month', transaction_date)
ORDER BY
  user, period;
