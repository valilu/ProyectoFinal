# Proyecto: Filogenia de Macacos y la Línea de Wallace
# Autora: Valentina Champutiz

# Crear carpetas si no existen
mkdir -p data results

echo "descargando secuencias de GenBank..."
# Descargar secuencias mitocondriales completas
esearch -db nucleotide -query "Macaca[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > data/macaca.fasta
esearch -db nucleotide -query "Casuarius casuarius[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > data/casuarius.fasta
esearch -db nucleotide -query "Phalanger orientalis[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > data/phalanger.fasta
esearch -db nucleotide -query "Dendrolagus matschiei[Organism] AND mitochondrion[Title] AND complete genome" | efetch -format fasta > data/dendrolagus.fasta

echo "Concatenando secuencias..."
#concatenar secuencias
rm -f data/secuencias.fasta  #eliminar antes el archivo si existe
cat data/*.fasta > data/secuencias.fasta
echo "intercalando secuencias con MUSCLE..."

#Alinear secuancias con MAFFT
mafft --auto --adjustdirection data/secuencias.fasta > results/alineadas.fasta

echo "construyendo árbol filogenético con IQ-TREE..."
#Construir árbol filogenético
/u/local/apps/iqtree/1.6.12/bin/iqtree -s results/alineadas.fasta -m MFP -bb 1000 -alrt 1000 -nt AUTO -pre results/arbol_mfp

echo "¡Análisis completo! Revisa los resultados en la carpeta 'results/'"
