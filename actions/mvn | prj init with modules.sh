#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"

groupId=$(simple_input "groupId (ex: com.zk ) :") 
artifactId=$(simple_input "artifactId (ex: dirt ) :") 
version=$(simple_input "version (ex: 1.0.0-SNAPSHOT ) :") 

mvn archetype:generate -DgroupId=$groupId -DartifactId=$artifactId -Dversion=$version
