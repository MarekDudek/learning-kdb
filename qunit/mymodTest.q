system "d .mymodTest";


beforeNamespaceMyMod:{}
afterNamespaceMyMod:{}


setUpAddTests:{};
tearDownAddTests:{};


testAdd1:{.qunit.assertEquals[ .mymod.add[2;3] ; 5 ; "2 plus 3 is 5" ]};

testAdd2:{.qunit.assertThat[ .mymod.add[2;3] ; < ; 6 ; "less than 6"]};

testAdd3:{
        r:.mymod.add[2;3];
        .qunit.assertThat[r; > ; 4 ; "more than 4"];
        .qunit.assertThat[r; < ; 6 ; "less than 6"];
    };

testAdd4:{.qunit.assertTrue[ .mymod.add[2;3]~5 ; "2 plus 3 is 5" ]};

testAdd5:{.qunit.assertError[ .mymod.add[2;] ; `two ; "can't add symbol to int" ]};

testAdd6:{.qunit.fail[ "forced fail" ]};

