== 20150509213929 CreateTeams: migrating ======================================
-- create_table(:teams)
   -> 0.0011s
== 20150509213929 CreateTeams: migrated (0.0011s) =============================

== 20150509214608 AddTeamFkToPlayers: migrating ===============================
-- change_table(:players)

== 20150509214608 AddTeamFkToPlayers: migrating ===============================
-- add_foreign_key(:players, :teams)
   -> 0.0001s
== 20150509214608 AddTeamFkToPlayers: migrated (0.0001s) ======================

