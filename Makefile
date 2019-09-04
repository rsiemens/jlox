build:
	javac com/ryanjsiemens/lox/*.java
    
generate:
	javac com/ryanjsiemens/tool/GenerateAst.java
	java com/ryanjsiemens/tool/GenerateAst com/ryanjsiemens/lox/

lox:
	java com/ryanjsiemens/lox/Lox $(SCRIPT)

.PHONY: lox
