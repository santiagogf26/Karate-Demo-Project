package com.tests.karate;

import com.intuit.karate.junit5.Karate;

public class PetStoreRunner {

    @Karate.Test
    Karate runner() {
        return Karate.run("classpath:com.tests.karate/features/add_pet_to_store.feature")
                .relativeTo(getClass());
    }
}
