
import re
def main():
	#abertura dos arquivos necessarios
	arqDic = open("UNIPROT.tab.txt",'r')
	arqout = open("../../../user/output/biogrid.txt","a")
	arqout.write('uniprotkb_A'+'\t'+'uniprotkb_B'+'\t'+'biogrid_A'+'\t'+'biogrid_B'+'\t'+'gene_symbol_A'+'\t'+'gene_symbol_B'+'\t'+'interaction_detection_method'+'\t'+'publication_first_author'+'\t'+'publication_year'+'\t'+'publication_identifier'+'\t'+'interaction_type'+'\t'+'interaction_identifier\n')
	arqin = open("biogrid.txt",'r')

	#mapeamento dos identificadores do biogrid para o uniprotkb
	dic = {}
	linha = arqDic.readline()
	linha = arqDic.readline()  
	while linha != '':
		sep = linha.split('\t')
		dic[sep[1]] = sep[0]
		linha = arqDic.readline()  
	arqDic.close()

	#leitura do arquivo principal
	linhas = []
	linha = arqin.readline()
	linha = arqin.readline()
	taxid = 'taxid:9606'
	while linha != '':
		sep = linha.split('\t')
		
		idA = re.search('\d{6,}', sep[2])
		idB = re.search('\d{6,}', sep[3])
		if idA is not None and idB is not None:
			try:
				uniprotkbA = dic[idA.group()]
				uniprotkbB = dic[idB.group()]
			except KeyError:
				linha = arqin.readline()
				sep = linha.split('\t')
				
		if sep[9] == taxid and sep[10]== taxid:

			geneA = re.search('(locuslink:)([A-Z0-9]+)|(locuslink:)([A-Z0-9])+\|', sep[2])	

			geneB = re.search('(locuslink:)([A-Z0-9]+)|(locuslink:)([A-Z0-9])+\|', sep[3])	

			interaction_detection_method = re.search('(psi-mi:\")(MI:\d{4,})',sep[6]) #group(2)

			publication_first_author = re.search('([A-Za-z]+\s)([A-Z]+)|([A-Za-z]+\s\s)([A-Z]+)|[A-Za-z]+',sep[7])
			ano = re.search('(\d{4})',sep[7])

			publication_identifier = re.search('(\d{1,})',sep[8])

			interaction_type = re.search('(psi-mi:\")(MI:\d{4,})',sep[11]) #group(2)

			interaction_identifier = re.search('(\d{1,})',sep[13])

			if geneA is not None and geneB is not None:
				arqout.write(uniprotkbA+'\t'+uniprotkbB+'\t'+idA.group()+'\t'+idB.group()+'\t'+geneA.group(2)+'\t'+geneB.group(2)+'\t'+interaction_detection_method.group(2)+'\t'+publication_first_author.group()+'\t'+ano.group()+'\t'+publication_identifier.group()+'\t'+interaction_type.group(2)+'\t'+interaction_identifier.group()+'\n')
			
		linha = arqin.readline()	

	arqin.close()
	arqout.close()

if __name__ == '__main__':
	main()