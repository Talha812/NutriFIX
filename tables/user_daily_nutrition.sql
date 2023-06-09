  CREATE TABLE "USER_DAILY_NUTRITION" 
   (	"ID" NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
      "USER_ID" NUMBER NOT NULL ENABLE, 
      "DATE_LOGGED" DATE NOT NULL ENABLE, 
      "NUTRITION_ID" NUMBER NOT NULL ENABLE, 
      "NUTRITION_COUNT" NUMBER DEFAULT 1 NOT NULL ENABLE, 
       CONSTRAINT "USER_DAILY_NUTRITI_ID_PK" PRIMARY KEY ("ID")
      USING INDEX  ENABLE
   ) ;

  ALTER TABLE "USER_DAILY_NUTRITION" ADD CONSTRAINT "USER_DAILY_NUTRITI_USER_ID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "USER_DETAILS" ("USER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "USER_DAILY_NUTRITION" ADD CONSTRAINT "USER_DAILY_NUTR_NUTRITION_I_FK" FOREIGN KEY ("NUTRITION_ID")
	  REFERENCES "NUTRITION_FACTS" ("ID") ON DELETE CASCADE ENABLE;

  CREATE INDEX "USER_DAILY_NUTRITI_I1" ON "USER_DAILY_NUTRITION" ("NUTRITION_ID") 
  ;

  CREATE INDEX "USER_DAILY_NUTRITI_I42" ON "USER_DAILY_NUTRITION" ("USER_ID") 
  ;
