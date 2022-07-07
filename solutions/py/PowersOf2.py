def powers_of_two(n):
	a = []
	for i in range(n + 1):
		a.append(2**i)
	return a

def main():
	for i in range(5):
		print(powers_of_two(i))

main()
