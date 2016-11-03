FILE = top.sv
EXCEPT = (*.sv|Makefile)

run: 
	vcs -sverilog $(FILE)
	./simv

clean:
	bash -O extglob -c 'rm -rf !$(EXCEPT)'

