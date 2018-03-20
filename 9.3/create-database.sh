if [ "$POSTGRES_DB" ]; then
	gosu postgres postgres --single -jE <<-EOSQL
		CREATE DATABASE $POSTGRES_DB;
	EOSQL
fi
