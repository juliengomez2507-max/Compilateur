all:	test
clean:
	rm -f *.o *.s
	rm -f tokeniser.cpp
	rm -f compilateur test mon_programme
tokeniser.cpp:	tokeniser.l
	flex++ -d -otokeniser.cpp tokeniser.l
tokeniser.o:	tokeniser.cpp
	g++ -c tokeniser.cpp

compilateur:	compilateur.cpp tokeniser.o
	g++ -ggdb -o compilateur compilateur.cpp tokeniser.o

test:	compilateur test.p
	./compilateur <test.p >test.s
	gcc -ggdb -no-pie test.s -o test

test_errors: compilateur
	@echo "=== Execution des tests d'erreurs (les erreurs affichees ci-dessous sont NORMALES) ==="
	-./compilateur < test_erreur_if.p
	-./compilateur < test_erreur_assign.p
	-./compilateur < test_erreur_arithmetique.p
	-./compilateur < test_erreur_logique.p
	-./compilateur < test_erreur_while.p
	-./compilateur < test_erreur_display.p
	@echo "=== Fin des tests d'erreurs ==="