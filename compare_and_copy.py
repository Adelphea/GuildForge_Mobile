import os
import re
import subprocess

def get_md_files(base_dir):
    """Récupère la liste des chemins relatifs des fichiers .md dans un répertoire."""
    md_files = set()
    for root, _, files in os.walk(base_dir):
        for file in files:
            if file.endswith(".md"):
                # Chemin relatif au dossier de base (documentation ou Documentation)
                relative_path = os.path.relpath(os.path.join(root, file), base_dir)
                md_files.add(relative_path)
    return md_files

def generate_copy_commands(missing_files):
    """Génère les commandes de copie pour les fichiers manquants."""
    commands = []
    for rel_path in missing_files:
        src = os.path.join("documentation", rel_path)
        dest_dir = os.path.join("Documentation", os.path.dirname(rel_path))
        # Créer le répertoire de destination si nécessaire
        commands.append(f"mkdir -p {dest_dir}")
        # Copier le fichier
        commands.append(f"cp {src} {dest_dir}/")
    return commands

# 1. Récupérer les fichiers .md dans chaque dossier
old_files = get_md_files("documentation")
new_files = get_md_files("Documentation")

# 2. Identifier les fichiers présents dans 'documentation' mais absents dans 'Documentation'
missing_files = old_files - new_files

print(f"Fichiers .md dans 'documentation' : {len(old_files)}")
print(f"Fichiers .md dans 'Documentation' : {len(new_files)}")
print(f"Fichiers .md manquants à copier : {len(missing_files)}")

if missing_files:
    print("\nFichiers manquants (relatifs à 'documentation'):")
    for f in sorted(list(missing_files)):
        print(f"- {f}")

    # 3. Générer les commandes de copie
    copy_commands = generate_copy_commands(missing_files)

    # 4. Écrire les commandes dans un fichier shell
    with open("copy_missing_files.sh", "w") as f:
        f.write("#!/bin/bash\n")
        f.write("set -e\n") # Arrêter en cas d'erreur
        f.write("\n".join(copy_commands))

    print("\nCommandes de copie générées dans 'copy_missing_files.sh'.")
else:
    print("\nAucun fichier .md manquant à copier. Les deux dossiers sont synchronisés pour les fichiers .md.")

