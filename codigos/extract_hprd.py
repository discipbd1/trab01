

def main():
	arqout = open('../../../user/output/hprd.txt','a')
	arqout.write('uniprotkb_A'+'\t'+'uniprotkb_B'+'\t'+'hprd_A'+'\t'+'hprd_B'+'\t'+'gene_symbol_A'+'\t'+'gene_symbol_B'+'\t'+'protein_accession_A'+'\t'+'protein_accession_B\n')

	arqDic = open('map.txt','r')
	arqin = open('sample_hprd.txt','r')

	dic = {}
	linha = arqDic.readline()
	while linha != '':
		sep = linha.split('\t')
		dic[int(sep[0])] = sep[1].strip('\n')
		linha = arqDic.readline()
	arqDic.close()


	linha = arqin.readline()
	while linha != '':
		sep = linha.split('\t')
		if int(sep[1]) in dic.keys() and int(sep[4]) in dic.keys():
			uniprotkbA = dic[int(sep[1])]
			uniprotkbB = dic[int(sep[4])]
			arqout.write(uniprotkbA+'\t'+uniprotkbA+'\t'+sep[1]+'\t'+sep[4]+'\t'+sep[0]+'\t'+sep[3]+'\t'+sep[2]+'\t'+sep[5]+'\n')
			
			
		linha = arqin.readline()

	arqin.close()
	arqout.close()




if __name__ == '__main__':
	main()
