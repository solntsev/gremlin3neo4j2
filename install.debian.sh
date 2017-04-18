apt-get install git maven

echo "Neo4j 2.3.10\n";
curl -s -O http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
tar zxf neo4j-community-2.3.10-unix.tar.gz
mv neo4j-community-2.3.10 neo4j
sed -i.bak s/dbms\.security\.auth_enabled=true/dbms\.security\.auth_enabled=false/ neo4j/conf/neo4j-server.properties
sed -i.bak s%#org.neo4j.server.thirdparty_jaxrs_classes=org.neo4j.examples.server.unmanaged=/examples/unmanaged%org.neo4j.server.thirdparty_jaxrs_classes=com.thinkaurelius.neo4j.plugins=/tp% neo4j/conf/neo4j-server.properties
sed -i.bak s%org.neo4j.server.webserver.port=7474%org.neo4j.server.webserver.port=7777% neo4j/conf/neo4j-server.properties
mkdir neo4j/scripts

echo "Gremlin\n";
git clone  --quiet  https://github.com/thinkaurelius/neo4j-gremlin-plugin neo4j-gremlin-plugin 
cd neo4j-gremlin-plugin
sed -i.bak s_\<tinkerpop-version\>3.1.0-incubating\</tinkerpop-version\>_\<tinkerpop-version\>3.2.0-incubating\</tinkerpop-version\>_ tinkerpop3/pom.xml
mvn clean -q package -DskipTests -Dtp.version=3
unzip -q target/neo4j-gremlin-plugin-tp3-2.3.1-server-plugin.zip -d ../neo4j/plugins/gremlin-plugin
cd ..

echo "Cleaning\n";
rm -rf neo4j-gremlin-plugin
rm -rf neo4j-community-2.3.10-unix.tar.gz

echo "Finished\n";