pipeline {
    agent any
    stages {
        stage('--START PIPELINE--') {
            steps {
                echo "begin pipeline execution"
            }
        }
        stage('--- execute db backups ---') {
            steps {
                echo "Backup dbs before deploy to prod."
            }
        }
        stage('-- capture obj snapshot--') {
            steps {
		echo "capture obj level snapshot for before after comparision"
            }
        }
        stage('-- XCOPY dev-2-prod changes --') {
            steps {
		bat """
		XCOPY C:\\Git\\REPO\\ADC_DEV\\*.sql C:\\Git\\REPO\\ADC_PROD /i /d /y /e
		"""
            }
        }
        stage('-- update GIT prod repo --') {
            steps {
		bat """
		cd C:\\Git\\repo\\ADC_PROD
		git add *.sql
		git commit -m "commit latest production release" *.sql
		git push -u origin master
		"""
            }
        }
        stage('-- export/import, deploy dacpac to prod --') {
            steps {
		bat """
		cd C:\\Git\\repo\\ADC_PROD
		BuildDACPAC_PROD.bat
		"""
            }
        }
        stage('-- prod post deploy--') {
            steps {
                echo "generate change log from pre-deploy obj snapshot"
            }
        }
        stage('--END PIPELINE--') {
            steps {
                echo "ending pipeline execution"
            }
        }
    }
}
