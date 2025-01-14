/opt/spark/bin/spark-submit \
 --class com.github.susom.starr.deid.Main \
 --master yarn \
 ./target/deid-3.0.31-SNAPSHOT-dataflow.jar \
 --runner=SparkRunner \
 --deidConfigFile=hdfs://tide/src/main/resources/deid_config_omop_genrep.yaml \
 --annotatorConfigFile=hdfs://tide/src/main/resources/annotator_config.yaml \
 --inputType=text \
 --phiFileName=hdfs://tide/phi/phi_person_data_example.csv \
 --personFile=hdfs://tide/person_data/person.csv \
 --inputResource=hdfs://tide/sample_notes \
 --outputResource=hdfs://tide/output