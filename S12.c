#include <my_global.h>
#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv)
{
	MYSQL *conn;
	int err;
	
	MYSQL_RES*resultado;
	MYSQL_ROW row;
	conn = mysql_init(NULL);
	
	if (conn == NULL)
	{
		printf("Error al conectar la base de datos: %u %s\n", mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	
	conn = mysql_real_connect(conn, "localhost", "root", "mysql", "Campeonato", 0, NULL, 0);
	if (conn == NULL)
	{
		printf("Error al conectar la base de datos: %u %s\n", mysql_errno(conn), mysql(conn));
		exit(1);
	}
	
	int ID;
	printf("Escibe tu identificador:\n");
	scanf ("%d", ID);
	
	char consulta [80];
	strcpy (consulta,"SELECT DatosPersonales.Gmail FROM DatosPersonales WHERE DatosPersonales.ID = '");
	strcat (consulta, ID);

	err = mysql_query(conn, consulta);
	
	if (err != 0) 
	{
		printf("Error al consultar datos de la base %u %s\n", mysql_errno(conn), mysql_error(conn));
		exit (1);
	}

	resultado = mysql_store_result(conn);
	row = mysql_fetch_row(resultado);
	
	if (row == NULL)
	{
		printf ("No se han obtenido datos en la consulta\n");
	}
	
	else
		while (row !=NULL) 
	{
			printf ("Tu contraseña es: %d\n", row[0]);
			row = mysql_fetch_row (resultado);
	}		
	
	mysql_close (conn);
	exit(0);
}

