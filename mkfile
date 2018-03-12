<config.mk

TARGETS=`{ bin/targets }

targets:V: $TARGETS

results/%_L001_R1_001_val_1.fq.gz \
results/%_L001_R2_001_val_2.fq.gz:	data/%_L001_R1_001.fastq.gz data/%_L001_R2_001.fastq.gz
	mkdir -p `dirname $target`
	trim_galore \
		--paired \
		--gzip \
		--output_dir results/ \
		--no_report_file \
		--quality $QUALITY \
		$prereq \
	&> "results/"$stem".trimgalore.txt" &


results/%_R1.trim.fastq.gz \
results/%_R2.trim.fastq.gz:	results/%_L001_R1_001_val_1.fq.gz results/%_L001_R2_001_val_2.fq.gz
		mkdir -p `dirname $target`
		mv "results/"$stem"_L001_R1_001_val_1.fq.gz" "results/"$stem"_R1.trim.fastq.gz"
		mv "results/"$stem"_L001_R2_001_val_2.fq.gz" "results/"$stem"_R2.trim.fastq.gz"

