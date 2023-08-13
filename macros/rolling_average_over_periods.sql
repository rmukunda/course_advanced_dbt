{% macro rolling_average_over_periods(column_name, partition_by, order_by, periods ) %}
    round(avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ), 2) AS avg_{{periods}}_periods_{{ column_name }}
{% endmacro %}
