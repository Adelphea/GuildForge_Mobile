import subprocess
import os

def generate_tree(path="."):
    """
    Génère l'arborescence du répertoire spécifié et la sauvegarde dans ARBORESCENCE.md.
    """
    # Exclure les dossiers .git, __pycache__, et les fichiers .pyc
    exclude_patterns = [
        ".git",
        "__pycache__",
        "*.pyc",
        "*.tres", # Exclure les ressources Godot générées
        "*.tscn", # Exclure les scènes Godot
        "*.import", # Exclure les fichiers d'importation Godot
        "*.godot", # Exclure le dossier de configuration Godot
        "*.exe", # Exclure les exécutables
        "*.zip", # Exclure les archives
        "*.rar", # Exclure les archives
        "*.7z", # Exclure les archives
        "*.log", # Exclure les logs
        "*.tmp", # Exclure les fichiers temporaires
        "*.bak", # Exclure les fichiers de sauvegarde
        "*.swp", # Exclure les fichiers de swap vim
        "*.swo", # Exclure les fichiers de swap vim
        "*.DS_Store", # Exclure les fichiers macOS
        "*.vscode", # Exclure les fichiers VSCode
        "*.idea", # Exclure les fichiers IntelliJ
        "*.iml", # Exclure les fichiers IntelliJ
        "*.project", # Exclure les fichiers Eclipse
        "*.settings", # Exclure les fichiers Eclipse
        "*.classpath", # Exclure les fichiers Eclipse
        "*.buildpath", # Exclure les fichiers Eclipse
        "*.sublime-project", # Exclure les fichiers Sublime Text
        "*.sublime-workspace", # Exclure les fichiers Sublime Text
        "*.atom", # Exclure les fichiers Atom
        "*.c9", # Exclure les fichiers Cloud9
        "*.metadata", # Exclure les fichiers Eclipse
        "*.cache", # Exclure les caches
        "*.npm", # Exclure les caches npm
        "*.yarn", # Exclure les caches yarn
        "*.pnpm", # Exclure les caches pnpm
        "*.lock", # Exclure les fichiers de verrouillage
        "*.lockb", # Exclure les fichiers de verrouillage
        "*.lockfile", # Exclure les fichiers de verrouillage
        "*.lock-w", # Exclure les fichiers de verrouillage
        "*.lock-r", # Exclure les fichiers de verrouillage
        "*.lock-x", # Exclure les fichiers de verrouillage
        "*.lock-y", # Exclure les fichiers de verrouillage
        "*.lock-z", # Exclure les fichiers de verrouillage
        "*.lock-a", # Exclure les fichiers de verrouillage
        "*.lock-b", # Exclure les fichiers de verrouillage
        "*.lock-c", # Exclure les fichiers de verrouillage
        "*.lock-d", # Exclure les fichiers de verrouillage
        "*.lock-e", # Exclure les fichiers de verrouillage
        "*.lock-f", # Exclure les fichiers de verrouillage
        "*.lock-g", # Exclure les fichiers de verrouillage
        "*.lock-h", # Exclure les fichiers de verrouillage
        "*.lock-i", # Exclure les fichiers de verrouillage
        "*.lock-j", # Exclure les fichiers de verrouillage
        "*.lock-k", # Exclure les fichiers de verrouillage
        "*.lock-l", # Exclure les fichiers de verrouillage
        "*.lock-m", # Exclure les fichiers de verrouillage
        "*.lock-n", # Exclure les fichiers de verrouillage
        "*.lock-o", # Exclure les fichiers de verrouillage
        "*.lock-p", # Exclure les fichiers de verrouillage
        "*.lock-q", # Exclure les fichiers de verrouillage
        "*.lock-r", # Exclure les fichiers de verrouillage
        "*.lock-s", # Exclure les fichiers de verrouillage
        "*.lock-t", # Exclure les fichiers de verrouillage
        "*.lock-u", # Exclure les fichiers de verrouillage
        "*.lock-v", # Exclure les fichiers de verrouillage
        "*.lock-w", # Exclure les fichiers de verrouillage
        "*.lock-x", # Exclure les fichiers de verrouillage
        "*.lock-y", # Exclure les fichiers de verrouillage
        "*.lock-z", # Exclure les fichiers de verrouillage
        "*.lock-A", # Exclure les fichiers de verrouillage
        "*.lock-B", # Exclure les fichiers de verrouillage
        "*.lock-C", # Exclure les fichiers de verrouillage
        "*.lock-D", # Exclure les fichiers de verrouillage
        "*.lock-E", # Exclure les fichiers de verrouillage
        "*.lock-F", # Exclure les fichiers de verrouillage
        "*.lock-G", # Exclure les fichiers de verrouillage
        "*.lock-H", # Exclure les fichiers de verrouillage
        "*.lock-I", # Exclure les fichiers de verrouillage
        "*.lock-J", # Exclure les fichiers de verrouillage
        "*.lock-K", # Exclure les fichiers de verrouillage
        "*.lock-L", # Exclure les fichiers de verrouillage
        "*.lock-M", # Exclure les fichiers de verrouillage
        "*.lock-N", # Exclure les fichiers de verrouillage
        "*.lock-O", # Exclure les fichiers de verrouillage
        "*.lock-P", # Exclure les fichiers de verrouillage
        "*.lock-Q", # Exclure les fichiers de verrouillage
        "*.lock-R", # Exclure les fichiers de verrouillage
        "*.lock-S", # Exclure les fichiers de verrouillage
        "*.lock-T", # Exclure les fichiers de verrouillage
        "*.lock-U", # Exclure les fichiers de verrouillage
        "*.lock-V", # Exclure les fichiers de verrouillage
        "*.lock-W", # Exclure les fichiers de verrouillage
        "*.lock-X", # Exclure les fichiers de verrouillage
        "*.lock-Y", # Exclure les fichiers de verrouillage
        "*.lock-Z", # Exclure les fichiers de verrouillage
    ]
    
    # Construire la commande tree
    command = ["tree", "-a", "-I", "|".join(exclude_patterns), path]
    
    try:
        # Exécuter la commande
        result = subprocess.run(command, capture_output=True, text=True, check=True)
        tree_output = result.stdout
        
        # Préparer le contenu du fichier Markdown
        markdown_content = "# ARBORESCENCE DU PROJET\n\n```\n" + tree_output + "```\n"
        
        # Déterminer le chemin de sortie
        output_path = os.path.join(path, "ARBORESCENCE.md")
        
        # Écrire le contenu dans le fichier
        with open(output_path, "w") as f:
            f.write(markdown_content)
            
        print(f"Arborescence générée et sauvegardée dans {output_path}")
        
    except subprocess.CalledProcessError as e:
        print(f"Erreur lors de l'exécution de la commande tree: {e}")
        print(f"Sortie d'erreur: {e.stderr}")
    except FileNotFoundError:
        print("Erreur: La commande 'tree' n'est pas installée.")

if __name__ == "__main__":
    # Exécuter à la racine du dépôt
    generate_tree("GuildForge_Mobile")
