import pymysql

from config.db_config import *
from logger.log import *


def into_db(data, origin):
    """
    数据入库
    :return:
    """
    conn = pymysql.connect(host=host, port=port, user=user, password=password, db=db, charset='utf8')
    cursor = conn.cursor()
    sql = "insert into news (title, href, md5, origin, news_time, content) VALUES (%s, %s, %s, %s, %s, %s)"
    try:
        flag = 0
        for i in data:
            try:
                cursor.execute(sql, (i['title'], i['href'], i['md5'], origin, i['time'], i['content']))
                conn.commit()
            except pymysql.err.IntegrityError:
                flag += 1
                pass
            except Exception as e:
                print(e)
                print(i)
    finally:
        conn.close()
        count = len(data)
        my_log('info', log_message(origin, count, flag))


