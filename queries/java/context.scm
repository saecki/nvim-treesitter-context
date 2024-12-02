(if_statement
  consequence: (_) @context.end
) @context.conditional

(method_declaration
  body: (_) @context.end
) @context.function

(for_statement
  body: (_) @context.end
) @context.loop

(enhanced_for_statement
  body: (_) @context.end
) @context.loop

(class_declaration
  body: (_) @context.end
) @context.type

(switch_expression) @context

(switch_block_statement_group) @context

(expression_statement) @context
