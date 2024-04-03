-- CreateTable
CREATE TABLE "check_ins" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "eattendee_id" INTEGER NOT NULL,
    CONSTRAINT "check_ins_eattendee_id_fkey" FOREIGN KEY ("eattendee_id") REFERENCES "attendees" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "check_ins_eattendee_id_key" ON "check_ins"("eattendee_id");
