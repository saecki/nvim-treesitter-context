; standard if
(if_expression
  consequence: (_ (_) @context.end)
) @context.conditional

; standard else
(else_clause
  (block (_)) @context.end
) @context.conditional

; let if  (its else is caught above)
(let_declaration
   (if_expression
     (block (_))) @context.end
) @context

; let else
(let_declaration
  alternative: (block (_) @context.end)
) @context

; let (tuple) = (values)
(let_declaration
  (tuple_pattern (_))
  (tuple_expression _) @context.end
) @context

; helps with long array definitions
(let_declaration
   (array_expression _) @context.end
) @context

(match_expression
  body: (_ (_) @context.end)
) @context.conditional

(match_arm
  (block (_) @context.end)
) @context.conditional

(for_expression
  body: (_ (_) @context.end)
) @context.loop

(while_expression
  body: (_ (_) @context.end)
) @context.loop

(loop_expression
  body: (_ (_) @context.end)
) @context.loop

(closure_expression
  body: (_ (_) @context.end)
) @context.closure

(function_item
  body: (_ (_) @context.end)
) @context.function

(impl_item
  body: (_ (_) @context.end)
) @context.type

(trait_item
  body: (_ (_) @context.end)
) @context.type

(struct_item
  body: (_ (_) @context.end)
) @context.type

(struct_expression
  (type_identifier) @context.end
) @context

(union_item
  body: (_ (_) @context.end)
) @context

(enum_item
  body: (_ (_) @context.end)
) @context.type

(mod_item
  body: (_ (_) @context.end)
) @context.namespace

; extern
(foreign_mod_item
  body: (_ (_) @context.end)
) @context.namespace

(async_block
  (block (_) @context.end)
) @context

(try_block
  (block (_) @context.end)
) @context

(unsafe_block
  (block (_) @context.end)
) @context

(macro_definition
  name: (_) @context.end
) @context
