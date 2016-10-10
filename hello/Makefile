FILE = hello.sv
EXCEPT = ($(FILE)|Makefile)

run: 
	vcs -sverilog $(FILE)
	./simv

clean:
	bash -O extglob -c 'rm -rf !$(EXCEPT)'

