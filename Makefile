ifdef BASE_IP_ADDR
	export BASE_IP_ADDR
endif

virtualbox: clean
	vagrant up --provider virtualbox

parallels: clean
	vagrant up --provider parallels --no-parallel

clean:
	vagrant destroy -f

.PHONY: clean
