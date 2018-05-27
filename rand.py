import random
import string
import sys

def rander(length,seed):
	inputs = string.ascii_letters + string.digits
	random.seed(seed)
	key = ''.join(random.choice(inputs)for _ in range(int(length)))
	return key
print(rander(sys.argv[1],sys.argv[2]))
