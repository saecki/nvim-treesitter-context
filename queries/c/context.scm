
(preproc_if
  (_) (_) @context.end
) @context

(preproc_ifdef
  name: (identifier) (_) @context.end
) @context

(function_definition
  body: (_ (_) @context.end)
) @context.function

(for_statement
  (compound_statement) @context.end
) @context.loop

(if_statement
  consequence: (_ (_) @context.end)
) @context.conditional

(else_clause
  (_ (_) @context.end)
) @context.conditional

(while_statement
  body: (_ (_) @context.end)
) @context.loop

(do_statement
  body: (_ (_) @context.end)
) @context.loop

(struct_specifier
  body: (_ (_) @context.end)
) @context.type

(enum_specifier
  body: (_ (_) @context.end)
) @context.type

(switch_statement
  body: (_) @context.end
) @context.conditional

(case_statement
  value: (_) (_) @context.end
) @context.conditional
