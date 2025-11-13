Algoritmo ConsumoAgua
    dimension consumo_agua[52, 7], promedio_agua[52], max[52]
	Definir reduccion_agua, promedio_global, promedio_semana, suma_global, max, porcentaje_reduccion, ahorro_agua Como Real
	Definir dias, opcionmenu, semana_registro, entrada, Semana_extra,semana, j, i, semanas_imprimir, simular_ahorro, Consumo_excesivo, Consumo_global, c Como Entero
    entrada <- 1
    semana <- 0
    dias <- 0
    opcionmenu <- 0
    suma_global <- 0
    promedio_global <- 0
    Consumo_excesivo <- 0
    Consumo_global <- 0
    reduccion_agua <- 0.0
    ahorro_agua <- 0.0
	j <- 1
	i <- 1
    porcentaje_reduccion <- 0.0
    Repetir
        Repetir
            Escribir "/============ MENU ============\\"
            Escribir "[1] --- Consumo por dia de agua"
            Escribir "[2] --- Reporte semanal"
            Escribir "[3] --- Reporte global"
            Escribir "[4] --- Simulacion de ahorro"
            Escribir "[5] --- salir"
            Escribir "Ingrese una opcion: "
            Leer opcionmenu
            Si opcionmenu <= 0 Entonces
                Escribir "Error el programa no permite caracteres solo numeros mayores a 0"
                Escribir "Presione una tecla para continuar"
                Leer c 
                Limpiar Pantalla
                opcionmenu <- 0
            FinSi
        Hasta Que opcionmenu > 0
        Segun opcionmenu Hacer
			1:
				Si entrada = 1 Entonces
					Repetir
						Escribir "/=============================\\"
						Escribir "¿Cuántas semanas va a registrar?"
						Leer semana_registro
						Si semana_registro <= 0 O semana_registro > 51 Entonces
							Escribir "Error: solo se permiten números mayores a 0 y menores o iguales a 51."
							Escribir "Presione una tecla para continuar"
							Leer c
							Limpiar Pantalla
							semana_registro <- 0
						FinSi
					Hasta Que semana_registro > 0 Y semana_registro <= 51
					Mientras semana < semana_registro Hacer
						Si semana % 4 = 0 Entonces
							Escribir "Mes ", (semana / 4) + 1
						FinSi
						Escribir "Semana ", semana + 1
						dias <- 0
						semana <- semana + 1
						
						Mientras dias < 7 Hacer
							Repetir
								Escribir "Consumo del día ", dias + 1, " en litros: "
								Leer consumo_agua[semana, dias + 1]
								Si consumo_agua[semana, dias + 1] <= 0 Entonces
									Escribir "Error: el programa no permite números menores o iguales a 0."
									Escribir "Por favor, ingrese nuevamente el consumo del día ", dias + 1
								FinSi
							Hasta Que consumo_agua[semana, dias + 1] > 0
							Si consumo_agua[semana, dias + 1] >= 300 Entonces
								Escribir "¡ALERTA! CONSUMO EXCESIVO DE AGUA O POSIBLE FUGA!"
							FinSi
							
							promedio_agua[semana] <- promedio_agua[semana] + consumo_agua[semana, dias + 1]
							
							Si dias = 0 Entonces
								max[semana] <- consumo_agua[semana, dias + 1]
							Sino
								Si consumo_agua[semana, dias + 1] > max[semana] Entonces
									max[semana] <- consumo_agua[semana, dias + 1]
								FinSi
							FinSi
							dias <- dias + 1
						FinMientras
					FinMientras
					Repetir
						Escribir "/=============================\\"
						Escribir "¿Desea agregar una semana más?"
						Escribir "[1] --- Sí"
						Escribir "[2] --- No"
						Leer Semana_extra
						Segun Semana_extra Hacer
							1:
									Si semana % 4 = 0 Entonces
										Escribir "Mes ", (semana / 4) + 1
									FinSi
									Escribir "Semana ", semana + 1
									dias <- 0
									semana <- semana + 1
									Mientras dias < 7 Hacer
										Repetir
											Escribir "Consumo del día ", dias + 1, " en litros: "
											Leer consumo_agua[semana, dias + 1]
											Si consumo_agua[semana, dias + 1] <= 0 Entonces
												Escribir "?? Error: el programa no permite números menores o iguales a 0."
												Escribir "Por favor, ingrese nuevamente el consumo del día ", dias + 1
											FinSi
										Hasta Que consumo_agua[semana, dias + 1] > 0
										Si consumo_agua[semana, dias + 1] >= 300 Entonces
											Escribir "¡ALERTA! CONSUMO EXCESIVO DE AGUA O POSIBLE FUGA!"
										FinSi
										promedio_agua[semana] <- promedio_agua[semana] + consumo_agua[semana, dias + 1]
										Si dias = 0 Entonces
											max[semana] <- consumo_agua[semana, dias + 1]
										Sino
											Si consumo_agua[semana, dias + 1] > max[semana] Entonces
												max[semana] <- consumo_agua[semana, dias + 1]
											FinSi
										FinSi
										dias <- dias + 1
									FinMientras
							2:
								Escribir "Regresando al menú principal"
							De Otro Modo:
								Escribir "Opción no válida."
						FinSegun
					Hasta Que Semana_extra = 2
					entrada <- 2 
				Sino
					Repetir
						Escribir "/=============================\\"
						Escribir "¿Deseas agregar una semana más?"
						Escribir "[1] --- Sí"
						Escribir "[2] --- No"
						Leer Semana_extra
						Segun Semana_extra Hacer
							1:
									Si semana % 4 = 0 Entonces
										Escribir "Mes ", (semana / 4) + 1
									FinSi
									Escribir "Semana ", semana + 1
									dias <- 0
									semana <- semana + 1
									
									Mientras dias < 7 Hacer
										Repetir
											Escribir "Consumo del día ", dias + 1, " en litros: "
											Leer consumo_agua[semana, dias + 1]
											Si consumo_agua[semana, dias + 1] <= 0 Entonces
												Escribir "?? Error: el programa no permite números menores o iguales a 0."
												Escribir "Por favor, ingrese nuevamente el consumo del día ", dias + 1
											FinSi
										Hasta Que consumo_agua[semana, dias + 1] > 0
										
										Si consumo_agua[semana, dias + 1] >= 300 Entonces
											Escribir "¡ALERTA! CONSUMO EXCESIVO DE AGUA O POSIBLE FUGA!"
										FinSi
										
										promedio_agua[semana] <- promedio_agua[semana] + consumo_agua[semana, dias + 1]
										
										Si dias = 0 Entonces
											max[semana] <- consumo_agua[semana, dias + 1]
										Sino
											Si consumo_agua[semana, dias + 1] > max[semana] Entonces
												max[semana] <- consumo_agua[semana, dias + 1]
											FinSi
										FinSi
										
										dias <- dias + 1
									FinMientras
							2:
								Escribir "Regresando al menú principal..."
							De Otro Modo:
								Escribir "Opción no válida."
						FinSegun
					Hasta Que Semana_extra = 2
    FinSi
            2:
                Repetir
                    Escribir "/===============================\\"
                    Escribir "Cuantas semanas quieres imprimir?"
                    Leer semanas_imprimir
                    Si semanas_imprimir <= 0 Entonces
                        Escribir "Error: el programa no permite caracteres, solo números mayores a 0."
                        Escribir "Presione una tecla para continuar"
                        Leer c
                        Limpiar Pantalla
                        semanas_imprimir <- 0
                    FinSi
                Hasta Que semanas_imprimir > 0
                Para j <- 0 Hasta semanas_imprimir - 1 Hacer
                    Si j % 4 = 0 Entonces
                        Escribir "Mes ", (j / 4) + 1
                    FinSi
                    Escribir "Semana ", j + 1
                    Consumo_excesivo <- 0
                    Para i <- 0 Hasta 6 Hacer
                        promedio_semana <- promedio_agua[j+1] / 7
                        Escribir "Consumo del dia ", i + 1, ": ", consumo_agua[j+1, i+1]
                        Si consumo_agua[j+1, i+1] >= 300 Entonces
                            Consumo_excesivo <- Consumo_excesivo + 1
                            Consumo_global <- Consumo_global + 1
                        FinSi
                    FinPara
                    suma_global <- suma_global + promedio_agua[j+1]
                    Escribir "EL total de agua consumida en la semana es de ", promedio_agua[j+1]
                    Escribir "EL promedio de la semana es de ", promedio_semana
                    Escribir "El porcentaje de dias que superaron el umbral en la semana es de ", (Consumo_excesivo / 7) * 100
                    Escribir "La mayor cantidad de agua consumo en un dia es de: ", max[j+1]
                    Escribir "Presione una tecla para continuar"
                    Leer c
                    Limpiar Pantalla
                FinPara
                promedio_global <- suma_global / semanas_imprimir
                Escribir "EL total de agua consumida en base a las semanas registradas es de: ", suma_global
                Escribir "El porcentaje de los dias que superaron el umbral de manera global es de: ", (Consumo_global / (semanas_imprimir * 7)) * 100
                Escribir "EL promedio del total es de ", promedio_global
                suma_global <- 0
                Consumo_global <- 0
                Escribir "Presione una tecla para continuar"
                Leer c
                Limpiar Pantalla
            3:
                Si semana <= 0 Entonces
                    Escribir "No hay semanas registradas para mostrar."
                Sino
                    Para j <- 0 Hasta semana - 1 Hacer
                        Si j % 4 = 0 Entonces
                            Escribir "Mes ", (j / 4) + 1
                        FinSi
                        Escribir "Semana ", j + 1
                        suma_global <- suma_global + promedio_agua[j+1]
                        Escribir "El total de agua consumida en esta semana es de: ", promedio_agua[j+1]
                    FinPara
                    promedio_global <- suma_global / semana
					Escribir ""
                    Escribir "El total de agua consumida en todas las semanas es de: ", suma_global
                    Escribir "El promedio total de agua es de: ", promedio_global
                FinSi
                suma_global <- 0
                promedio_global <- 0
                Escribir "Presione una tecla para continuar"
                Leer c
                Limpiar Pantalla
            4:
                Repetir
                    Escribir "/====================================\\"
                    Escribir "De cuanto quiere su reduccion de agua: "
                    Leer simular_ahorro
                    Si simular_ahorro <= 0 Entonces
                        Escribir "Error el programa no permite caracteres solo numeros mayores a 0"
                        Escribir "Presione una tecla para continuar"
                        Leer c
                        Limpiar Pantalla
                        simular_ahorro <- 0
                    FinSi
                Hasta Que simular_ahorro > 0
                Repetir
                    Escribir "Que semana quiere reduccir: "
                    Leer semanas_imprimir
                    Si semanas_imprimir <= 0 Entonces
                        Escribir "Error el programa no permite caracteres solo numeros mayores a 0"
                        Escribir "Presione una tecla para continuar"
                        Leer c
                        Limpiar Pantalla
                        semanas_imprimir <- 0
                    FinSi
                Hasta Que semanas_imprimir > 0
                porcentaje_reduccion <- simular_ahorro / 100.0
                reduccion_agua <- 0
                ahorro_agua <- 0
                Para i <- 0 Hasta 6 Hacer
                    reduccion_agua <- reduccion_agua + (consumo_agua[semanas_imprimir, i+1] - (consumo_agua[semanas_imprimir, i+1] * porcentaje_reduccion))
                    ahorro_agua <- ahorro_agua + consumo_agua[semanas_imprimir, i+1]
                FinPara
                Escribir "Si se reduce en ", simular_ahorro, "% a su consumo total se estaria ahorrando ", ahorro_agua * porcentaje_reduccion, " litros por lo que usted estaria consumiendo ", reduccion_agua, " litros"
                Escribir "Presione una tecla para continuar"
                Leer c
                Limpiar Pantalla
            5:
                Escribir "Saliendo"
                Escribir "Programa terminado"
            De Otro Modo:
                Escribir "opcion no valida"
        FinSegun
    Hasta Que opcionmenu = 5
FinAlgoritmo