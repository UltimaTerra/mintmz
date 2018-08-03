module Mint
  class Compiler
    def compile(node : Ast::EnumId)
      prefix =
        underscorize node.name

      name =
        underscorize node.option

      expressions =
        compile node.expressions, ","

      "new $$#{prefix}_#{name}(#{expressions})"
    end
  end
end
