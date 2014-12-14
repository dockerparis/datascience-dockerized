**Datascience-dockerized**

======================

Remote Hackathon

Data science Environment with IPython Notebooks, Spark Cluster via docker

Spins up a Container with Spark installed, and IPython Notebook server.

Clone


Get into pyspark-docker

Build your docker image  :    ** sh pyspark-docker/build-images **

Run the container with the notebook server : 
      
      **docker -d -p 8888:8888 samklr/pyspark-noteboook ipython notebook --profile=pyspark**
      
If you just want to play with spark from the command line :
      
      ** sudo docker run -i -t samklr/pyspark-notebook pyspark **
      ** sudo docker run -i -t samklr/pyspark-notebook spark-shell **


Head to your browser  :  * http://[your_IP_address or localhost]:8888 *


Next :
            *Full web app with embedded notebooks and control of environments.*
   
            *Support for Scala via iscala and Andy's spark notebook*
   
            *Full support for multiple clusters via Kubernetes (work in progress)*
   
            *Deploy Script to Mesos/Marathon*



Sam Bessalah

@samklr

