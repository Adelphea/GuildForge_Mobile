import os
import datetime

def generate_tree(startpath):
    """Génère une représentation arborescente du répertoire."""
    tree_output = ""
    for root, dirs, files in os.walk(startpath):
        # Exclure les dossiers cachés et les dossiers spécifiques
        dirs[:] = [d for d in dirs if not d.startswith('.') and d not in ['__pycache__', 'node_modules']]
        
        level = root.replace(startpath, '').count(os.sep)
        indent = '│   ' * (level - 1) + '├── ' if level > 0 else ''
        
        # Afficher le dossier
        if level > 0:
            tree_output += f"{indent.replace('├── ', '└── ' if level == 1 else '├── ')}{os.path.basename(root)}/\n"

        # Afficher les fichiers
        sub_indent = '│   ' * level + '├── '
        for f in files:
            # Exclure le script lui-même
            if f == os.path.basename(__file__):
                continue
            tree_output += f"{sub_indent}{f}\n"
            
    return tree_output

if __name__ == "__main__":
    # Le chemin de départ est la racine du dépôt
    repo_root = os.path.dirname(os.path.abspath(__file__))
    
    # Générer l'arborescence à partir de la racine du dépôt
    tree_content = generate_tree(repo_root)
    
    # Ajouter le titre et la date
    header = f"# Structure du Dépôt GuildForge_Mobile\n\n"
    header += f"Généré automatiquement le {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n"
    
    # Écrire dans TREE.md
    with open(os.path.join(repo_root, "TREE.md"), "w") as f:
        f.write(header)
        f.write("```\n")
        f.write(os.path.basename(repo_root) + "/\n")
        f.write(tree_content)
        f.write("```\n")

    print("TREE.md généré avec succès.")
