RAGEL=ragel

parser.jl: parser.rl
	$(RAGEL) -Y --goto-backend -G2 $< -o $@
