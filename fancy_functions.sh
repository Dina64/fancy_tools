gco()
{
	if [[ -e .git ]]; then
		git branch
		git commit -m $*
	else
		echo "Erreur!! Vous n'etes pas dans un projet git"
	fi
}