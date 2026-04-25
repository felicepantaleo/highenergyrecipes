# High Energy Recipes

A collaborative LaTeX cookbook for recipes from CERN life, group dinners, and Patatrack hackathons.

The repository is designed so that each recipe can have translations in multiple languages while keeping a common structure.

## Repository

SSH clone URL:

git@github.com:felicepantaleo/highenergyrecipes.git

## Directory layout

```text
highenergyrecipes/
├── main.tex
├── Makefile
├── config/
│   ├── metadata.tex
│   ├── packages.tex
│   ├── recipe-commands.tex
│   └── style.tex
├── sections/
│   ├── introduction-it.tex
│   └── recipes-it.tex
├── recipes/
│   └── recipe-slug/
│       ├── images/
│       └── it/
│           └── recipe.tex
└── templates/
    └── recipe-template-it.tex
```

## Adding a recipe

1. Create a new folder under `recipes/` using a lowercase slug, for example `recipes/pasta-al-tonno/`.
2. Create the language folder, for now `recipes/pasta-al-tonno/it/`.
3. Copy `templates/recipe-template-it.tex` to `recipes/pasta-al-tonno/it/recipe.tex`.
4. Add images in `recipes/pasta-al-tonno/images/`.
5. Add the recipe to `sections/recipes-it.tex` with:

```latex
\input{recipes/pasta-al-tonno/it/recipe}
```

## Standard recipe format

```latex
\recipeTitle{Titolo della ricetta}
\recipeSubtitle{Breve descrizione}
\recipeAuthor{Nome autore o autori}
\recipeStory{Storia dietro la ricetta}
\recipePhoto{recipes/nome-ricetta/images/foto.jpg}
\recipeInfo{preparazione}{cottura}{porzioni}{difficolta'}{categoria}
```

Then add ingredients, tools, procedure, and notes using the environments defined in `config/recipe-commands.tex`.

## Build locally

Install a LaTeX distribution with `latexmk`, then run:

```bash
make
```

The generated PDF is written to `build/main.pdf`.

## Continuous integration

GitHub Actions builds the book on every push and pull request and uploads the PDF as an artifact.
