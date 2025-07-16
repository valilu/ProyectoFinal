#!/bin/bash
# Proyecto: Filogenia de Macacos y la Línea de Wallace
# Autora: Valentina Champutiz

# Cargar módulos necesarios
module load iqtree/2.2.2.6

# Crear carpetas si no existen
mkdir -p data results

echo "Descargando secuencias de GenBank..."
esearch -db nucleotide -query "Macaca[Organism] AND COX1[Gene] AND mitochondrion[Filter]" | efetch -format fasta | head -100 > data/macaca.fasta
esearch -db nucleotide -query "Casuarius casuarius[Organism] AND COX1[Gene] AND mitochondrion[Filter]" | efetch -format fasta | head -100 > data/casuarius.fasta
esearch -db nucleotide -query "Phalanger orientalis[Organism] AND COX1[Gene] AND mitochondrion[Filter]" | efetch -format fasta | head -100 > data/phalanger.fasta
esearch -db nucleotide -query "Dendrolagus goodfellowi[Organism] AND COX1[Gene] AND mitochondrion[Filter]" | efetch -format fasta | head -100 > data/dendrolagus.fasta
esearch -db nucleotide -query "Gallus gallus[Organism] AND COX1[Gene] AND mitochondrion[Filter]" | efetch -format fasta | head -100 > data/gallus.fasta

echo "Concatenando secuencias..."
cat data/macaca.fasta data/casuarius.fasta data/phalanger.fasta data/dendrolagus.fasta data/gallus.fasta > data/secuencias.fasta

echo "Verificando secuencias descargadas..."
seq_count=$(grep -c "^>" data/secuencias.fasta)
echo "Total de secuencias: $seq_count"

if [ $seq_count -eq 0 ]; then
    echo "Error: No se descargaron secuencias"
    exit 1
fi

echo " corriendo atom"
perl -pe 's/^>(\w+\.\d)+\s+(\w+)\s(\w+).*/>\1\2\3/' data/secuencias.fasta > data/secuencias.nuevas.fasta

echo "Alineando secuencias con MUSCLE..."
SCRIPTS/muscle3.8.31_i86linux64 -in data/secuencias.nuevas.fasta -out results/alineadas.fasta

echo "Construyendo árbol filogenético con IQ-TREE..."
iqtree -s results/alineadas.fasta -m MFP -nt AUTO -pre results/arbol_mfp

echo "¡Análisis completo! Revisa los resultados en la carpeta 'results/'"
echo "Archivos importantes:"
echo "  - results/arbol_mfp.treefile (archivo del árbol)"
echo "  - results/arbol_mfp.iqtree (estadísticas del análisis)"
