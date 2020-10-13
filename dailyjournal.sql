CREATE TABLE `Mood` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `label` TEXT NOT NULL
);

CREATE TABLE `Entry` (
    `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `date` INTEGER NOT NULL,
    `concept` TEXT NOT NULL,
    `entry` TEXT NOT NULL,
    `mood_id` INTEGER NOT NULL,
    FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

INSERT INTO `Mood` VALUES (null, "happy");
INSERT INTO `Mood` VALUES (null, "sad");
INSERT INTO `Mood` VALUES (null, "angry");
INSERT INTO `Mood` VALUES (null, "indifferent");


INSERT INTO `Entry` VALUES (null, "07/24/2020", "HTML & CSS", "We talked about HTML components and how to make grid layouts with Flexbox in CSS.", 4);
INSERT INTO `Entry` VALUES (null, "07/29/2020", "javascript", "Today we talked about how to link our main.js file to our project.", 1);
INSERT INTO `Entry` VALUES (null, "08/08/2020", "javascript modules", "Today we talked about how to setup javascript modules to compartmentalize our project.", 1);