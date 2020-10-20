import sqlite3
import json
from models import Mood

def get_all_moods():
    # Open connection to the database
    with sqlite3.connect("./dailyjournal.db") as conn:

        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        # SQL query to get the moods data
        db_cursor.execute("""
        SELECT
        m.id,
        m.label
        FROM Mood m
        """)

        # Initialized empty list to hold moods
        moods = []

        # Convert rows of data to Python list
        dataset = db_cursor.fetchall()

        # Iterate list of data returned from database
        for row in dataset:
            mood = Mood(row['id'], row['label'])

            moods.append(mood.__dict__)

    return json.dumps(moods)