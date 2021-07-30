#!/bin/bash

# Neo4j sample import script for Lobbywatch data
# https://neo4j.com/docs/operations-manual/current/tools/import/

set -e

# MATCH (n) DETACH DELETE n


NEO4J_PATH="$HOME/.config/Neo4j Desktop/Application/neo4jDatabases/database-0b42a643-61a0-4b3f-8c54-4dfbe872d200/installation-3.5.6"
NEO4J_DB="$NEO4J_PATH/data/databases/graph.db/"
[ -d "$NEO4J_DB" ] && rm -r "$NEO4J_DB" && echo "Existing graph.db deleted"

"$NEO4J_PATH/bin/neo4j-admin" \
import \
--database=graph.db \
--id-type=INTEGER \
--delimiter='\t' \
--array-delimiter=',' \
--report-file=neo4j_import.log \
--nodes "export/node_partei.csv" \
--nodes "export/node_branche.csv" \
--nodes "export/node_interessengruppe.csv" \
--nodes "export/node_interessenraum.csv" \
--nodes "export/node_kommission.csv" \
--nodes "export/node_organisation.csv" \
--nodes "export/node_organisation_jahr.csv" \
--nodes "export/node_parlamentarier.csv" \
--nodes "export/node_fraktion.csv" \
--nodes "export/node_rat.csv" \
--nodes "export/node_kanton.csv" \
--nodes "export/node_kanton_jahr.csv" \
--nodes "export/node_person.csv" \
--relationships "export/relationship_interessenbindung.csv" \
--relationships "export/relationship_interessenbindung_jahr.csv" \
--relationships "export/relationship_in_kommission.csv" \
--relationships "export/relationship_mandat.csv" \
--relationships "export/relationship_mandat_jahr.csv" \
--relationships "export/relationship_organisation_beziehung.csv" \
--relationships "export/relationship_zutrittsberechtigung.csv" \
--relationships "export/relationship_parlamentarier_partei.csv" \
--relationships "export/relationship_parlamentarier_fraktion.csv" \
--relationships "export/relationship_parlamentarier_rat.csv" \
--relationships "export/relationship_parlamentarier_kanton.csv" \
--relationships "export/relationship_organisation_interessengruppe.csv" \
--relationships "export/relationship_organisation_interessengruppe2.csv" \
--relationships "export/relationship_organisation_interessengruppe3.csv" \
--relationships "export/relationship_organisation_interessenraum.csv" \
--relationships "export/relationship_organisation_jahr.csv" \
--relationships "export/relationship_kanton_jahr.csv" \
--relationships "export/relationship_interessengruppe_branche.csv" \
--relationships "export/relationship_branche_kommission.csv" \
--relationships "export/relationship_branche_kommission2.csv"

