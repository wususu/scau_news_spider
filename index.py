from into_db import into_db
from spider.jwc_spider import JWCSpider


def run():
    spider = JWCSpider()
    spider.main()
    jwc_news = spider.get_n_news()
    jwc_publish = spider.get_p_news()
    into_db(jwc_news, 1)
    into_db(jwc_publish, 2)


if __name__ == '__main__':
    run()