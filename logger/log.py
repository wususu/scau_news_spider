import logging
import os

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



