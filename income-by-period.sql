-- Rendimento por período

SELECT
  date_trunc('month', transaction_date) AS period,
  SUM(valor_transacao) AS total_income
FROM
  transactions_table
WHERE
  transaction_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY
  date_trunc('month', transaction_date)
ORDER BY
  period;
