#!/home/logan/projects/canvas-formatter/.venv/bin/python
import re, sys

from latex2mathml.converter import convert as latex2mathml


def replacer(match):
    latex = match.group(1)
    mathml = latex2mathml(latex)
    return "<br>" + mathml + "<br>"


if sys.stdin.isatty():
    sys.exit()
text = []
while True:
    try:
        line = input()
        text.append(line)
    except EOFError:
        # no more information
        break

text = "\n".join(text)

text = re.sub(r"\$(.*?)\$", replacer, text)
print(text)
