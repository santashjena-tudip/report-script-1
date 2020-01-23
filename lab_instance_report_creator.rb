require 'csv' 

table = CSV.table('outf.csv')

gcp_keywords = {
    email: %w(cloudvlab@tudip.com google@tudip.com tudip.com tudip.nl tudip),
    class: ['Cloud ML Engine','Coursera',
     'AWS Educate Starter Account',
     'Deployment Manager Quest', 'Apigee Istio Workshop',
            'Baseline: Data, ML, AI Quest', 'Cloud Architecture',
            'Big Data and Machine Learning Fundamentals','App Engine',
            'GCP Essentials Quest', 'Google Cloud', 'GCP',
            'Tensorflow and Deep Learning, Without a PhD ', 'Qwik Starts and Challenge Labs',
            'Machine Learning APIs Quest', 'Recommendations with TensorFlow',
            'Google Kubernetes Engine' 'ML Immersion','App Dev: Deploying an API for the Quiz Application v1.1', 'Kubernetes Engine', 'TAW'],
    class_tags: ['Coursera', 'Google', 'ed/it', 'Accelerate 2018', 'gcloud', 'next18'],
    lab_title: ['Cloud ML Engine','Using Apigee for API Management','App Dev: Storing Application Data in Cloud Datastore v1.1','App Dev: Storing Image and Video Files in Cloud Storage v1.1',
                'Leveraging Unstructured Data','Kubernetes Basics','Data to Insights',
                'Big Data & ML','App Engine','Cloud Hero: Further along','Cloud Hero: Home is cloud','Practice with ML APIs in Cloud Datalab v1.5','Deriving Insights from Advanced SQL Functions v1.5','Create a Cloud SQL Instance Using Deployment Manager',
                'Creating a Virtual Machine', 'Coursera', 'Cloud Shell','Anthos in 10 Minutes','HybridAnthos-070 Configuring GKE for Multi-Cluster Operation with Istio','HybridAnthos-075 Configuring GKE for Shared Control Plane Multi-Cluster Operation',
                'Kubernetes Engine', 'HTTP Load Balancer', 'Networking 101', 'Networking 102','Live Video Workflow with Captions',
                'Cloud ML Engine: Qwik Start', 'Google Cloud Platform', 'GCP','HybridAnthos-060 Managing Policies and Security with Istio and Citadel','HybridAnthos-040 Observing Services using Prometheus, Grafana, Jaeger, and Kiali',
                'Deploying to Kubernetes', 'Google Cloud','JAVAMS01 Bootstrapping the Application Frontend and Backend','Serverless Data Analysis','HybridAnthos-050 Managing Traffic Routing with Istio and Envoy',
                'Getting started in Qwiklabs', 'Reading Web Server Logs', 'BigQuery', 'Qwik Start','App Dev: Processing Cloud Pub/Sub Data using Cloud Functions v1.1','Building a Regression Model in AI Platform Notebooks',
                'Install and Use Cloud Tools for PowerShell','Stackdriver', 'Google Compute Engine','Building an ARIMA Model for a Financial Dataset','Predicting visitor purchases with BQML model (ML for Business Professionals)',
                'Dataproc', 'Continuous deployment with Jenkins','Storage Gateway: File Gateway Network Configuration','Qwiklabs Access v2',
                'App Dev-Storing Image and Video Files in Cloud Storage-Java','[ILT] Building conversational experiences with Dialogflow : Lab 1','Practice with ML APIs in Cloud Jupyter Lab',
                'Introduction to Containers and Docker','Troubleshooting and Solving Data Join Pitfalls v1.5','App Dev: Deploying an API for the Quiz Application v1.1', 'Using the Natural Language API from Google Docs',
                'Getting Started with Compute Engine', 'Helm Package Manager','JAVAMS03 Working with Runtime Configurations','[ILT] Building conversational experiences with Dialogflow : Lab 2',
                'Customize Network Topology with Subnetworks', 'Advanced Kubernetes Bootcamp','Predict Visitor Purchases with a Classification Model in BQML v1.5',
                'AWS Credentials for Automating MultiCloud Network Deployment with Terraform',
                'Building and Updating an ML Model on Edge Compute:','JAVAMS11 Working with Cloud Spanner','JAVAMS02 Configuring and Connecting to Cloud SQL', 'Firebase SDK for Cloud Functions',
                'Building High Availability and High Bandwidth NAT Gateways',
                'Configuring Deployment Manager Templates', 'Getting Started with Cloud KMS',
                'G Suite Admin Getting Started: Personalization','JAVAMS08 Using Cloud Platform APIs','Sticky user demo',
                'Google Maps Web Services Proxy for Mobile Applications', 'Improving Network Performance I',
                'Hands-on with Google Apps Script', 'JAVAMS06 Integrating Cloud Pub/Sub with Spring','Dialogflow - Building a Google Assistant Application',
                'Serverless Machine Learning', 'Cloud Video Intelligence and Cloud Vision APIs',
                'with the Cloud ML APIs', 'Distributed Computation of NDVI from Landsat Images Using Cloud Dataflow',
                'Deployment Manager for Appserver', 'Entity and Sentiment Analysis with the Natural Language API',
                'Running Distributed TensorFlow on Compute Engine', 'Images with the Cloud Vision API',
                '3 USF - Streaming into Bigtable at low-latency', 'Translate Text with the Cloud Translation API',
                'Speech to Text Transcription with the Cloud Speech API','Create a pizza-ordering chatbot with Dialogflow','JAVAMS07 Uploading and Storing Files', '(Python) User Authentication',
                'Getting Started With Elastifile', 'Introduction to Apigee Edge', 'Kubernetes Load Balancing',
                'Autoscaling','Building and Updating a ML Model on Edge Compute', 'JAVAMS05 Messaging with Cloud Pub/Sub','Streaming Data Processing v1.2',
                'Using the Natural Language API with Ruby', 'Software Packages and File Archives on Windows',
                'Creating an Object Detection Application Using TensorFlow',
                '1a USF - A simple Dataflow pipeline (Python)', 'Kubeflow End to End', 'Running Windows Containers on Compute Engine',
                'Deploy Microsoft SQL Server to Compute Engine', 'Google Apps Script:', 'Dummy Lab - Next 18',
                'Publish streaming data into Pub/Sub', 'App Dev: Setting up a Development Environment',
                'App Dev: Developing a Backend Service', 'Cloud Hero: Classic', 
		'Getting Started with SAP HANA Express', 'App Dev: Debugging Application Errors v1.1', 'AHYBRID070 Configuring GKE for Multi-Cluster Operation with Istio', 'Fun with GKE On-Prem', 'Deploy to Cloud Run', 'Cloud Build to Cloud Run', 'AHYBRID050 Managing Traffic Routing with Istio and Envoy', 'AHYBRID040 Observing Services using Prometheus, Grafana, Jaeger, and Kiali', 'AHYBRID075 Configuring GKE for Shared Control Plane Multi-Cluster Operation', 'AHYBRID060 Managing Policies and Security with Istio and Citadel', 'Exploring and Creating an Ecommerce Analytics Pipeline with Cloud Dataprep v1.5', 'Cloud Hero: Into the cloud', 'Cloud Hero: Building blocks'],
    lab_tags: ['GSP', 'GIC', 'Kubernetes Engine', 'G Suite', 'kubernetes', 'gcloud', 'dataprep', 'Stackdriver', 'it-cert', 'ELIX'],
    role: ['Trainer'],
    origin: ['GDG']
}

#aws_keywords = {
#    lab_tags:['spl'],
#    class_tags: ['reinvent2017'],
#    lab_title:['Automated Video Editing with YOU as the Star!',
#               'AWS Migration Hub - Track Migrations from a single location',
#               'Challenge Lab', 'EC2', 'Introduction to AWS Service Catalog', 'Migration Workshop – DMS Lab','Controlling Access to Amazon S3 Resources Using Bucket Policies and IAM Policies','Migrating On-Premises NFS Using AWS DataSync and Amazon File Gateway',
#               'Migration Workshop – ADS Lab', 'S3: Multi-region Storage Backup with Cross-Region Replication', 'Visualizing Security Groups with Amazon Elasticsearch Service','Working with Amazon CloudFront for Dynamic Content Acceleration','Programming AWS Security Token Service (STS) with .NET','Introduction to AWS Internet of Things (IoT)','Game Hosting with Amazon GameLift','Programming AWS Lambda for Windows','Centralized Log Processing with Amazon Elasticsearch Service',
#	       'Datacenter Migration: Assessment', 'Administering Amazon RDS for Microsoft SQL Server', 'Creating a Serverless Video Conversion Watchfolder Workflow for MediaConvert', 'Image Insertion and Input Switching with AWS Elemental MediaLive', 'Image Insertion and Input Switching with AWS Elemental MediaLive', 'Creating Models with Amazon SageMaker', 'IoT Edge Computing: AWS IoT Greengrass']
#}

gcp_keywords.each do |key, value|
  table.delete_if do |row|
    unless row[key].nil?
      string = row[key].downcase
      value.any? { |word| string.include?(word.downcase) }
    end
  end
end

#aws_keywords.each do |key, value|
#   table.delete_if do |row|
#     unless row[key].nil?
#       string = row[key].downcase
#       value.any? { |word| string.include?(word.downcase) }
#     end
#   end
#end

File.open('ql-aws-lab_instance_report_november_2019.csv', 'w') do |f|
  f.write(table.to_csv)
end
