(test_declaration
  (block ("{") @context.final)
) @context.function

(comptime_statement
  (block ("{") @context.final)
) @context.function

(variable_declaration
  (struct_declaration
    "{" @context.final
  )
) @context.type

(variable_declaration
  (enum_declaration
    "{" @context.final
  )
) @context.type

(variable_declaration
  (union_declaration
    "{" @context.final
  )
) @context.type

(variable_declaration
  (error_set_declaration
    "{" @context.final
  )
) @context.type

(function_declaration
  body: (block
    ("{") @context.final
  )
) @context.function

(if_statement
  (block_expression
    (block ("{") @context.final)
  )
) @context.conditional

(switch_expression
  "{" @context.final
) @context.conditional

(for_statement
  (block_expression
    (block ("{") @context.final)
  )
) @context.loop

(while_statement
  (block_expression
    (block ("{") @context.final)
  )
) @context.loop
