## Who this project is for
This project is for people that need to submit formatted text assignments to Canvas, with LaTeX math interspersed. Unfortunately, this program will only work for people that run a UNIX based operating system on their laptop, that means Macs and Linux, as their underlying architecture is the same as the computer I use. You'll also need to be mildly familiar with the command line if you want to use this.

## Explanation
I wrote this because I refuse to click "insert:math" every time I want to write math in Canvas. This program fixes that problem by processing assignments written in markdown with LaTeX, and spitting out HTML with MathML, which can be submitted in place of the in-site text editor by clicking the little **</>** button in the bottom right of the submission box. This program reads what's in the user's clipboard, and writes the result directly back into it for maximum time saving. That way, for me, I just need to write my answers and copy, run, and paste.


## Instructions
### Installation
If you're using a Mac or another *NIX system, run `git clone https://github.com/12to-the12/canvas-formatter.git` in your terminal to download this repository, then run ./mac-install.sh to install the dependencies, run `linux-install.sh` for linux machines. If you're using a Windows machine or Chromebook, I'm sorry, but this code isn't going to work for you, unless you can figure something out with WSL.

### Usage
To run the processing script on a mac, type `./mac-run.sh` into your terminal. If you're using linux, use the linux-run.sh script.

### Example
Say for instance, that you want to submit the following markdown to canvas:
```
Problem integral:
$\int_{0}^\pi x^2\cos(4x)dx$
Result of first Integration By Parts:
$\frac{x^2}{4}\sin{(4x)}-\frac{1}{2}\int x\sin(4x)dx$
result of second IBP:
$-\frac{x}{8}\cos(4x)+\int \frac{1}{4}\cos(4x)$
```
If you were using the default submission box, you would have to either write your answer in the canvas box, putting it at the peril of the refresh button, clicking insert math three times, or copy and paste it from your favorite text editor, format it in canvas, and do exactly the same thing for the math. With this program, you can write answers in markdown and LaTeX, convert, and paste to Canvas.

This is what the resulting HTML_MathML looks like:
```
<p>Problem integral:
<br><math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mrow><msubsup><mo>∫</mo><mrow><mn>0</mn></mrow><mi>π</mi></msubsup><msup><mi>x</mi><mn>2</mn></msup><mi>cos</mi><mo stretchy="false">(</mo><mn>4</mn><mi>x</mi><mo stretchy="false">)</mo><mi>d</mi><mi>x</mi></mrow></math><br>
Result of first Integration By Parts:
<br><math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mrow><mfrac><mrow><msup><mi>x</mi><mn>2</mn></msup></mrow><mrow><mn>4</mn></mrow></mfrac><mi>sin</mi><mrow><mo stretchy="false">(</mo><mn>4</mn><mi>x</mi><mo stretchy="false">)</mo></mrow><mo>−</mo><mfrac><mrow><mn>1</mn></mrow><mrow><mn>2</mn></mrow></mfrac><mo>∫</mo><mi>x</mi><mi>sin</mi><mo stretchy="false">(</mo><mn>4</mn><mi>x</mi><mo stretchy="false">)</mo><mi>d</mi><mi>x</mi></mrow></math><br>
result of second IBP:
<br><math xmlns="http://www.w3.org/1998/Math/MathML" display="inline"><mrow><mo>−</mo><mfrac><mrow><mi>x</mi></mrow><mrow><mn>8</mn></mrow></mfrac><mi>cos</mi><mo stretchy="false">(</mo><mn>4</mn><mi>x</mi><mo stretchy="false">)</mo><mo>+</mo><mo>∫</mo><mfrac><mrow><mn>1</mn></mrow><mrow><mn>4</mn></mrow></mfrac><mi>cos</mi><mo stretchy="false">(</mo><mn>4</mn><mi>x</mi><mo stretchy="false">)</mo></mrow></math><br></p>
```
Ugly.


I hope this works for whoever stumbles upon it!
