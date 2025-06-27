# Filogenia de Macacos y la Línea de Wallace

## Autora  
Valentina Champutiz  
Proyecto Final – Bioinformática  
Universidad Católica del Ecuador

---

## Descripción del proyecto

Este proyecto explora cómo la Línea de Wallace, una frontera biogeográfica entre Asia y Australasia, ha influido en la evolución de mamíferos terrestres. Se analiza la filogenia del género *Macaca* y se compara con especies endémicas del lado australasiático, como el casuario y el cuscús. La hipótesis central es que esta barrera geográfica ha promovido una divergencia evolutiva observable en los genomas mitocondriales.

---

## Cómo empezar

Estas instrucciones permiten reproducir el análisis en una máquina local.

### Requisitos

- Linux o macOS
- Acceso a terminal bash
- Instalación de MUSCLE, IQ-TREE y EDirect:

```bash
sudo apt update
sudo apt install muscle iqtree edirect
```

### Instalación

Clona el repositorio o descarga este script. Luego ejecuta:

```bash
chmod +x proyecto_wallace.sh
./proyecto_wallace.sh
```

---

## Resultados

Los archivos generados estarán en:  
`filogenia_wallace/secuencias/`

Puedes visualizar el árbol resultante con FigTree o [iTOL](https://itol.embl.de/)

---

## Herramientas utilizadas

- [MUSCLE](https://www.drive5.com/muscle/)
- [IQ-TREE](http://www.iqtree.org/)
- [Entrez Direct (EDirect)](https://www.ncbi.nlm.nih.gov/books/NBK179288/)

---

## Licencia

Este proyecto es académico. Si se reutiliza, citar a la autora y la PUCE.

---

## Agradecimientos

- A la comunidad que publica datos abiertos en GenBank  
- A los creadores de herramientas bioinformáticas libres  
- A los profesores de la PUCE por su guía
