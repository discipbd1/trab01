
def main():
	arqDic = open("mapping.txt",'r')
	arqout = open("map.txt",'a')

	linha = arqDic.readline()
	while linha != '':
		sep = linha.split('\t')
		subsep = sep[6].split(',')
		if len(subsep)==1 and sep[6] != '-':
			arqout.write(sep[0] + '\t' + sep[6]+'\n')
		linha = arqDic.readline()
		


if __name__ == '__main__':
	main()