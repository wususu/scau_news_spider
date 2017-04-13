import pymysql
from config.db_config import *
from tool.tools import *
from logger.log import my_log


def into_db(data, origin):
    """
    数据入库
    :return:
    """
    conn = pymysql.connect(host=host, port=port, user=user, password=password, db=db, charset='utf8')
    cursor = conn.cursor()
    sql = "insert into news (title, href, md5, origin, news_time, content) VALUES (%s, %s, %s, %s, %s, %s)"
    count = flag = error = 0
    try:
        for i in data:
            count += 1
            try:
                cursor.execute(sql, (i['title'], i['href'], i['md5'], origin, i['time'], i['content']))
                conn.commit()
            except pymysql.err.IntegrityError:
                flag += 1
                pass
            except Exception as e:
                if i['href'] == '':
                    error +=1
                    info = "缺少链接：　", i, "origin: ", origin
                    my_log('error', info)
                else:
                    info = "未知错误"
                    my_log("error", info)
                pass

    finally:
        conn.close()
        my_log('info', log_message(origin, count, flag, error))


