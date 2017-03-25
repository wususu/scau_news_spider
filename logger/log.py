import logging
import os
from datetime import datetime

logging.basicConfig(
    filename=os.path.dirname(__file__)+'/logger.log',
    level=logging.DEBUG,
    datefmt='%a, %d %b %Y %H:%M:%S',
    format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s'
)

def my_log(type, message):
    """
    爬虫日志
    :param type:
    :param message:
    :return:
    """
    if type == 'info':
        logging.info(message)
    elif type == 'error':
        logging.error(message)
    elif type == 'debug':
        logging.debug(message)


def log_message(origin, count, flag):
    if origin is 1:
        message = '共爬取', count, '条教务处【新闻】： ', count - flag, ' 条更新 | ', flag, ' 条重复'
    if origin is 2:
        message = '共爬取', count, '条教务处【公告】： ', count - flag, ' 条更新 | ', flag, ' 条重复'

    return message
