{% macro unit_testing_table_select(source_table, test_table) %}

      {% if var('unit_testing', false) == true %}

            {{ return(test_table) }}

      {% else %}

            {{ return(source_table) }}

      {% endif %}

{% endmacro %}
