all_datasets: dataset_m dataset_p
	@echo "All datasets done."

dataset_m: training_dataset_m validation_dataset_m
	@echo "Copied: Training and Validation Datasets M (“mobile”)"

dataset_p: training_dataset_p validation_dataset_p
	@echo "Copied: Training and Validation Datasets P (“professional”)"

training_dataset_m:
	if [ -d "data" ]; then; fi
	@echo "Downloading Training Dataset M (“mobile”) (3.8GB)"
	@wget https://data.vision.ee.ethz.ch/cvl/clic/mobile_train.zip
	@echo "Uncompressing ZIP file"
	@unzip mobile_train.zip data/
	@echo "Dataset downloaded and copied to data folder"

validation_dataset_m:
	if [ -d "data" ]; then; fi
	@echo "Downloading Validation Dataset M (“mobile”) (129MB)"
	@wget https://data.vision.ee.ethz.ch/cvl/clic/mobile_valid.zip
	@echo "Uncompressing ZIP file"
	@unzip mobile_valid.zip data/
	@echo "Dataset downloaded and copied to data folder"

training_dataset_m:
	if [ -d "data" ]; then; fi
	@echo "Downloading Training Dataset P (“professional”) (1.9GB)"
	@wget https://data.vision.ee.ethz.ch/cvl/clic/professional_train.zip
	@echo "Uncompressing ZIP file"
	@unzip mobile_train.zip data/
	@echo "Dataset downloaded and copied to data folder"

validation_dataset_m:
	if [ -d "data" ]; then; fi
	@echo "Downloading Validation Dataset P (“professional”) (226MB)"
	@wget https://data.vision.ee.ethz.ch/cvl/clic/professional_valid.zip
	@echo "Uncompressing ZIP file"
	@unzip mobile_valid.zip data/
	@echo "Dataset downloaded and copied to data folder"
