#!/bin/sh

DECAC_HOME=$(cd "$(dirname "$0")"/../../../ && pwd)
CP_FILE="$DECAC_HOME"/target/generated-sources/classpath.txt

CP="$DECAC_HOME"/target/test-classes/:"$DECAC_HOME"/target/classes/:$(cat "$CP_FILE")

exec java -enableassertions -cp "$CP" fr.ensimag.deca.context.TestIndex "$@"

