apply_shell_expansion() {
python -c "
import os
import sys

doc=sys.stdin.read()

for k,v in os.environ.items():
  print('Replacing {}'.format(k))
  doc = doc.replace('$'+'{'+k+'}',v)
sys.stdout.write(doc)"
}

cuproject() {
 kustomize build ${1}| ( set -a; source ${1}/project.env ; apply_shell_expansion )
}
