#! /bin/sh
echo "============================= valide : test HelloWorld  ============================="


test_synt_valide () {
    # $1 = premier argument.
    if test_synt "$1" 2>&1 | grep -q -e "$1:[0-9][0-9]*:"
    then
        echo "Echec inattendu pour test_synt sur $1."
        exit 1 
    else
        echo "Succes attendu de test_synt sur $1."
        
    fi
}    

for cas_de_test in src/test/deca/syntax/valid/HelloWorld/*.deca
do
    test_synt_valide "$cas_de_test"
done