#!/bin/bash

ipython profile create pyspark

echo "c.IPKernelApp.pylab= 'inline' " >> /.ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.ip = '*' " >>/.ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.open_browser = False"  >> /.ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.port = 8888" >> /.ipython/profile_pyspark/ipython_notebook_config.py

##### configure pyspark

echo "import os" >>/.ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "os.environ['SPARK_HOME'] = '/spark-1.1.1' " >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "" >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py

echo "import sys" >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "spark_home = os.environ.get('SPARK_HOME', None)"
echo "sys.path.insert(0, '/spark-1.1.1/python')" >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "sys.path.insert(0, os.path.join(spark_home, 'python/lib/py4j-0.8.2.1-src.zip'))" >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "execfile(os.path.join(spark_home, 'python/pyspark/shell.py'))" >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py

echo "CLUSTER_URL = 'local' " >> /.ipython/profile_pyspark/startup/00-pyspark-setup.py
