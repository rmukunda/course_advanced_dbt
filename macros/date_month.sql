{%- macro date_month(column_name, time_period = 'month') -%}
    date(DATE_TRUNC('{{time_period}}', {{column_name}}::DATE))
{%- endmacro -%}
