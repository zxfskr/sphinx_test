https://www.jianshu.com/p/d4a1347f467b

2.配置conf.py
在source/conf.py文件中加入如下代码， 导入自己的项目路径

import os
import sys
sys.path.insert(0, os.path.abspath('./../../code'))

sphinx-apidoc -o ./source ../code/
make html


文档打包命令,按版本分开
```
git clone --no-single-branch --depth 50 https://github.com/zxxxf/evaengine-documentation.git .

git checkout --force origin/master

git clean -d -f -f


pip install --upgrade pip

pip install --upgrade --cache-dir /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/.cache/pip Pygments==2.3.1 setuptools==41.0.1 docutils==0.14 mock==1.0.1 pillow==5.4.1 alabaster>=0.7,<0.8,!=0.7.5 commonmark==0.8.1 recommonmark==0.5.0 sphinx<2 sphinx-rtd-theme<0.5 readthedocs-sphinx-ext<1.1

cat source/conf.py

sphinx-build -T -b readthedocs -d _build/doctrees-readthedocs -D language=en . _build/html

python /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/envs/latest/bin/sphinx-build -b latex -D language=en -d _build/doctrees . _build/latex

cat latexmkrc

latexmk -r latexmkrc -pdf -f -dvi- -ps- -jobname=sphinx-test-zxf -interaction=nonstopmode

mv -f /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/checkouts/latest/source/_build/latex/sphinx-test-zxf.pdf /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/artifacts/latest/sphinx_pdf/sphinx-test-zxf.pdf

python /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/envs/latest/bin/sphinx-build -T -b epub -d _build/doctrees-epub -D language=en . _build/epub


mv -f /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/checkouts/latest/source/_build/epub/EvaEngine.epub /home/docs/checkouts/readthedocs.org/user_builds/sphinx-test-zxf/artifacts/latest/sphinx_epub/sphinx-test-zxf.epub
```