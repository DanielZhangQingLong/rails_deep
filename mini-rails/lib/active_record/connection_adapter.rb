module ActiveRecord
  module ConnectionAdapter
    class SqliteAdapter
      def initialize(file)
        require "sqlite3"
        @db = SQLite3::Database.new(file.to_s, results_as_hash: true)
      end

      def execute(sql)
        @db.execute(sql).each do |row|
          row.keys.each do |key|
            value = row.delete(key)
            # Only keep string keys (ignores index-based key, 0, 1)
            if key.is_a? String
              row[key.to_sym] = value
            end
          end
        end
      end

      def columns(table_name)
        @db.table_info(table_name).map { |info| info["name"].to_sym }
      end

    end
  end
end
