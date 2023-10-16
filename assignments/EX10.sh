sinfo -N -o "%N %t %C":
#-N specifies that we want to list nodes.
# -o "%N %t %C" customizes the output format,
# where %N is for the node names, %t is for the node state, and %C is for the available CPUs.
#the OUTPUT:
# NODELIST STATE CPUS(A/I/O/T)
# node01 alloc 40/0/0/40
# node01 alloc 40/0/0/40
# node01 alloc 40/0/0/40
# node01 alloc 40/0/0/40
# node02 mix 11/29/0/40
# node02 mix 11/29/0/40
# node02 mix 11/29/0/40
# node02 mix 11/29/0/40
# node03 idle 0/44/0/44
# node03 idle 0/44/0/44
# node03 idle 0/44/0/44
# node03 idle 0/44/0/44
# node04 alloc 44/0/0/44
# node04 alloc 44/0/0/44
# node04 alloc 44/0/0/44
# node04 alloc 44/0/0/44
# node05 alloc 44/0/0/44
# node05 alloc 44/0/0/44
# node05 alloc 44/0/0/44
# node05 alloc 44/0/0/44
# node06 idle 0/44/0/44
# node06 idle 0/44/0/44
# node07 idle 0/44/0/44
# node07 idle 0/44/0/44
# node08 resv 0/44/0/44
# node08 resv 0/44/0/44
# node09 idle 0/44/0/44
# node09 idle 0/44/0/44
# node10 idle 0/44/0/44
# node10 idle 0/44/0/44
# node11 idle 0/44/0/44
# node11 idle 0/44/0/44
# node12 idle 0/44/0/44
# node12 idle 0/44/0/44
# node13 idle 0/44/0/44
# node13 idle 0/44/0/44
# node14 mix 33/11/0/44
# node14 mix 33/11/0/44
# node14 mix 33/11/0/44
# node14 mix 33/11/0/44
# node14 mix 33/11/0/44
# node15 mix 4/40/0/44
# node15 mix 4/40/0/44
# node15 mix 4/40/0/44
# node15 mix 4/40/0/44
# node15 mix 4/40/0/44
# node16 resv 0/44/0/44
# node16 resv 0/44/0/44
# node17 idle 0/44/0/44
# node17 idle 0/44/0/44
# visu01 idle 0/44/0/44
