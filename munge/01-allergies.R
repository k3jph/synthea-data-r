# Example preprocessing script.

allergies.by.patient <- covid19.10k.allergies[, list(bees = any(grepl("Allergy to bee venom", DESCRIPTION)),
                                                     dairy = any(grepl("Allergy to dairy product ", DESCRIPTION)),
                                                     grass = any(grepl("Allergy to grass pollen", DESCRIPTION)),
                                                     trees = any(grepl("Allergy to tree pollen", DESCRIPTION)),
                                                     fish = any(grepl("Allergy to fish", DESCRIPTION)),
                                                     nuts = any(grepl("Allergy to nut", DESCRIPTION)),
                                                     dander = any(grepl("Dander (animal) allergy", DESCRIPTION)),
                                                     mould = any(grepl("Allergy to mould", DESCRIPTION)),
                                                     shellfish = any(grepl("Shellfish allergy", DESCRIPTION)),
                                                     dustmites = any(grepl("House dust mite allergy", DESCRIPTION)),
                                                     eggs = any(grepl("Allergy to eggs", DESCRIPTION)),
                                                     wheat = any(grepl("Allergy to wheat", DESCRIPTION)),
                                                     latex = any(grepl("Latex allergy", DESCRIPTION)),
                                                     soya = any(grepl("Allergy to soya", DESCRIPTION)),
                                                     peanuts = any(grepl("Allergy to peanuts", DESCRIPTION))),
                                              by = list(PATIENT)]