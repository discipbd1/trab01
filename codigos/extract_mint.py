
import re
def main():
	#abertura dos arquivos necessarios
	arqout = open("../../../user/output/mint.txt","a")
	arqout.write('uniprotkbA'+'\t'+'uniprotkbB'+'\t'+'gene_symbolA'+'\t'+'gene_symbolB'+'\t'+'interaction_detection_method'+'\t'+'publication_first_author'+'\t'+'publication_year'+'\t'+'publication_identifier'+'\t'+'interaction_type'+'\t'+'interaction_identifier'+'\t'+'intact_miscore\n')
	arqin = open("mint.txt",'r')

	#leitura do arquivo principal
	linhas = []
	linha = arqin.readline()
	linha = arqin.readline()
	taxid ='taxid:9606(human)|taxid:9606(Homo sapiens)'
	while linha != '':
		sep = linha.split('\t')

		uniprotkbA = re.search('(uniprotkb:)([A-Za-z0-9]+)',sep[0])
		uniprotkbB = re.search('(uniprotkb:)([A-Za-z0-9]+)',sep[1])

		if sep[9] == taxid and sep[10]== taxid and uniprotkbA is not None and uniprotkbB is not None:
			geneA = re.search('(uniprotkb:)([A-Za-z0-9_-]+)(\(gene name\))', sep[4])
			
			geneB = re.search('(uniprotkb:)([A-Za-z0-9_-]+)(\(gene name\))', sep[5])

			interaction_detection_method = re.search('(psi-mi:\")(MI:\d{4,})',sep[6]) #group(2)

			publication_first_author = re.search('([A-Za-z]+\s)([A-Z]+)|([A-Za-z]+\s\s)([A-Z]+)|[A-Za-z]+|[-]',sep[7])
			year = re.search('(\d{4})',sep[7])
			ano = year.group() if year is not None else '-'

			publication_identifier = re.search('(pubmed:)(\d{1,})|(pubmed:)([a-z0-9]+)',sep[8]) #group(2)

			interaction_type = re.search('(psi-mi:\")(MI:\d{4,})',sep[11]) #group(2)

			interaction_identifier = re.search('(intact:)([A-Z]+-\d{1,})',sep[13]) #group(2)

			confidence_value = re.search('(intact-miscore:){1,}.{1,}',sep[14])
			cv = confidence_value.group().split(':')
			
			if geneA is not None and geneB is not None:
				arqout.write(uniprotkbA.group(2)+'\t'+uniprotkbB.group(2)+'\t'+geneA.group(2)+'\t'+geneB.group(2)+'\t'+interaction_detection_method.group(2)+'\t'+publication_first_author.group()+'\t'+ano+'\t'+str(publication_identifier.group(2))+'\t'+interaction_type.group(2)+'\t'+interaction_identifier.group(2)+'\t'+cv[1]+'\n')
				
		linha = arqin.readline()	

	arqin.close()
	arqout.close()

if __name__ == '__main__':
	main()