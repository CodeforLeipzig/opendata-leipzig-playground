package de.oklab.leipzig.ckanclient

import eu.trentorise.opendata.jackan.CkanClient
import eu.trentorise.opendata.jackan.model.CkanResource
import eu.trentorise.opendata.jackan.CkanQuery
import eu.trentorise.opendata.jackan.model.CkanDataset

class Main {

	def static void main(String[] args) {
		val client = new CkanClient("https://opendata.leipzig.de/")
		val query = CkanQuery.filter().byText("Kindergarten")
		val filteredDatasets = client.searchDatasets(query, 10, 0).getResults();

		println('''
			«FOR CkanDataset d : filteredDatasets»
				- «d.name»
				  - maintainer: «d.maintainer»
				  - metaData:
				    - created: «d.metadataCreated»
				    - changed: «d.metadataModified»
				  - resources:
				    «FOR CkanResource r : d.resources»
				    - «r.id»
				      - name: «r.name»
				      - description: «r.description»
				      - created: «r.created»
				      - modified: «r.lastModified»
				      - format: «r.format»
				      - url: «r.url»
				    «ENDFOR»
			«ENDFOR»
		''')
	}
}
