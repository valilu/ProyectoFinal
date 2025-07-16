# Filogenia de Macacos y la Línea de Wallace

Valentina Champutiz (valentinachamputiz94@gmail.com)  
Junio 2025  
Proyecto Final – Bioinformática  
Universidad Católica del Ecuador

Este proyecto construye un árbol filogenético a partir de secuencias mitocondriales completas de diversas especies del género *Macaca* (primates asiáticos), y las compara con especies representativas de Australasia. El objetivo es explorar si la distribución geográfica marcada por la Línea de Wallace está asociada con una divergencia evolutiva observable a nivel genético.

La Línea de Wallace representa una frontera biogeográfica histórica que separa la fauna de Asia de la de Australasia. Esta barrera ha sido objeto de múltiples estudios evolutivos. En este caso, se utiliza ADN mitocondrial disponible públicamente para evaluar su efecto sobre mamíferos terrestres.

![MACACO1](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Macaca_sinica_-_01.jpg/1024px-Macaca_sinica_-_01.jpg)

---

## Flujo de Trabajo del Programa

El análisis se automatiza mediante el script `run_filogenia.sh`, con los siguientes pasos:

1. **Obtención de Datos**  
   Descarga secuencias mitocondriales completas de *Macaca* y especies australasianas desde GenBank. Detalles en `data/data_README.txt`.

2. **Organización**  
   Clasifica secuencias en la carpeta "data"

3. **Concatenación**  
   Une todas las secuencias en `data/secuencias.fasta`.

4. **Alineamiento**  
   Se realiza el alineamiento con **MUSCLE**, generando el archivo `alineadas.fasta`.

5. **Construcción del Árbol**  
   Genera un árbol filogenético con IQ-TREE (modelo GTR+G, 1000 réplicas bootstrap), guardado en `results/arbol_filogenetico.treefile`.

6. **Visualización**  
   El árbol se visualiza en FigTree.
![macaco 2](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Female_Toque_macaque_with_baby_-_%28Harmony_of_Life%29.jpg/1920px-Female_Toque_macaque_with_baby_-_%28Harmony_of_Life%29.jpg)

---
## Requisitos

- Sistema operativo con terminal bash (Linux/macOS)
- Conexión a internet
- Instalados:
  - `muscle`
  - `iqtree`
  - `edirect`

---
## Contacto

- Valentina Champutiz
- Estudiante de [Bioinformática - PUCE]
- Contacto: pvchamputiz@puce.edu.ec
   

---
Agradecimientos


---
Referrencias

- Edgar, R. C. (2004). MUSCLE: Multiple sequence alignment with high accuracy and high throughput. Nucleic Acids Research, 32(5), 1792–1797. https://doi.org/10.1093/nar/gkh340
- Nguyen, L.-T., Schmidt, H. A., von Haeseler, A., & Minh, B. Q. (2015). IQ-TREE: A fast and effective stochastic algorithm for estimating maximum-likelihood phylogenies. Molecular Biology and Evolution, 32(1), 268–274. https://doi.org/10.1093/molbev/msu300
- National Center for Biotechnology Information. (2013). Entrez Direct: E-utilities on the UNIX command line. National Library of Medicine (US). https://www.ncbi.nlm.nih.gov/books/NBK179288/
- allace, A. R. (1863). On the physical geography of the Malay Archipelago. Journal of the Royal Geographical Society of London, 33, 217–234. https://doi.org/10.2307/1798446






