# 工具箱
import hashlib


def md5(url, title):
    md5 = hashlib.md5()
    md5.update((url + title).encode(encoding='utf8'))
    md5_code = md5.hexdigest()
    return md5_code


def origin_map(origin):
    if origin is 1:
        o_type = "教务处【新闻】"
    elif origin is 2:
        o_type = '教务处【公告】'
    else:
        o_type = None
    return o_type


def log_message(origin, count, flag, error):
    o_type = origin_map(origin)
    update_count = str(count - flag - error)
    message = '共爬取', count, '条' + o_type + '： ' + update_count + ' 条更新 | ',flag, ' 条重复 | ', error, '条错误'
    return message