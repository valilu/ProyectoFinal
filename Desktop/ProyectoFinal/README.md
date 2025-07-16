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
![Filogenia](results/filogenia.final.2.png)

Interpretación del Árbol Filogenético
El árbol filogenético fue generado a partir de secuencias del gen mitocondrial cox1 (citocromo c oxidasa subunidad I), un marcador comúnmente utilizado en estudios de filogenia molecular y delimitación de especies. Las secuencias utilizadas corresponden a un conjunto de especies seleccionadas de Asia y Australasia, con el objetivo de evaluar si existe una divergencia genética asociada con la Línea de Wallace, una reconocida barrera biogeográfica entre ambas regiones.

Principales inferencias:

Macaca munzala (placentario asiático) se agrupa de forma claramente separada respecto a los taxones australasianos, lo que concuerda con su divergencia esperada como mamífero euterio y respalda la hipótesis de aislamiento evolutivo entre Asia y Australasia.
Dendrolagus goodfellowi y Phalanger orientalis, ambos marsupiales australasianos, forman un clado bien definido, reflejando su historia evolutiva compartida dentro del linaje de los metaterios.
Las aves Casuarius casuarius y Gallus gallus se agrupan en un clado externo, basal respecto a los mamíferos, lo que refleja su divergencia temprana en la evolución de los amniotas.
Las distancias filogenéticas observadas (longitudes de rama) son consistentes con divergencias profundas entre los linajes separados geográficamente por la Línea de Wallace.
En conjunto, estos resultados sustentan que la Línea de Wallace no solo constituye una barrera geográfica, sino también una discontinuidad evolutiva detectable a nivel molecular, incluso cuando se utilizan fragmentos individuales como COX1
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


---
Referrencias

- Edgar, R. C. (2004). MUSCLE: Multiple sequence alignment with high accuracy and high throughput. Nucleic Acids Research, 32(5), 1792–1797. https://doi.org/10.1093/nar/gkh340
- Nguyen, L.-T., Schmidt, H. A., von Haeseler, A., & Minh, B. Q. (2015). IQ-TREE: A fast and effective stochastic algorithm for estimating maximum-likelihood phylogenies. Molecular Biology and Evolution, 32(1), 268–274. https://doi.org/10.1093/molbev/msu300
- National Center for Biotechnology Information. (2013). Entrez Direct: E-utilities on the UNIX command line. National Library of Medicine (US). https://www.ncbi.nlm.nih.gov/books/NBK179288/
- allace, A. R. (1863). On the physical geography of the Malay Archipelago. Journal of the Royal Geographical Society of London, 33, 217–234. https://doi.org/10.2307/1798446






