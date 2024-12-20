import sqlite3
 
# function to execute an sql select into users table from username
def get_user(username):
    try:
        # connect to database
        conn = sqlite3.connect('database.db')
        # create cursor
        cur = conn.cursor()
        # execute sql select
        cur.execute("SELECT * FROM users WHERE username = '" + username + "';")
        # fetch data
        data = cur.fetchone()
        # close connection
        conn.close()
        # return data
        return data
    except Exception as e:
        print("An error occurred:", str(e))
        return None