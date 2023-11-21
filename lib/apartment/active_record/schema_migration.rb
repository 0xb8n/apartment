# frozen_string_literal: true

# module ActiveRecord
#   class SchemaMigration # :nodoc:
#     class << self
#       def table_exists?
#         connection.data_source_exists?(table_name)
#       end
#
#       alias :table_name :name
#     end
#   end
# end

# module ActiveRecord
#   module ConnectionAdapters # :nodoc:
#     module SchemaStatements
#       def data_source_exists?(name)
#         pp " name: #{name}, data_source_sql: #{data_source_sql(name)}"
#         query_values(data_source_sql(name), "SCHEMA").any? if name.present?
#       rescue NotImplementedError
#         data_sources.include?(name.to_s)
#       end
#     end
#   end
# end

# TODO: required only for ransack < 4.1
class Arel::Table
  alias :table_name :name
end
