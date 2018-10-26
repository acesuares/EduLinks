module Conversion

  def create_join_table(a, b)
    a, b = [a, b].sort
    a_id = "#{a.singularize}_id".to_sym
    b_id = "#{b.singularize}_id".to_sym

    say "Creating Join Table #{a}_#{b}...", :subitem
    table_name = [a, b].join('_').to_sym
    create_table table_name, id: false do |t|
      t.integer a_id
      t.integer b_id
    end
    add_index table_name, a_id
    add_index table_name, b_id
  end

  def drop_join_table(a, b)
    a, b = [a, b].sort
    say "Dropping Join Table #{a}_#{b}...", :subitem
    table_name = [a, b].join('_').to_sym
    drop_table table_name
  end

end
