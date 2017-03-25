import hashlib
import re
import requests
from bs4 import BeautifulSoup
from logger.log import my_log


class JWCSpider():
    """
    教务处爬虫
    @author janke
    """
    def __init__(self):
        # 教务处公告
        self.__p_origin_url = 'http://jwc.scau.edu.cn/jwc/index.php?m=content&c=index&a=lists&catid=16'
        # 教务处新闻
        self.__n_origin_url = 'http://jwc.scau.edu.cn/jwc/index.php?m=content&c=index&a=lists&catid=15'
        self.__p_urls = self.__get_p_urls()
        self.__n_urls = self.__get_n_urls()

    def __get_html(self, url):
        """
        :param url: 教务页面url
        :return： 页面html代码/False
        """
        resp = requests.get(url)
        if resp.status_code == 200:
            html = BeautifulSoup(resp.content, 'html.parser')
            return html
        return False

    def __get_urls(self, html):
        tags = html.find('div', class_=['list', 'w736', 'fl', 'border']).find_all('li')
        if tags != None:
            temp_list = list()
            for tag in tags:
                temp_dict = dict()
                tag_a = tag.find('a')
                tag_span = tag.find('span')
                href = tag_a['href']
                title = tag_a.get_text()
                temp_dict['href'] = href
                temp_dict['title'] = title
                temp_list.append(temp_dict)
            return temp_list
        return False

    def __get_news_time(self, news_url):
        try:
            html = self.__get_html(news_url)
        except requests.RequestException:
            return False
        # 教务处时间戳
        try:
            tags = html.find('div', class_='detail_title')
            time_tag = tags.find_all('span')
            if time_tag != None:
                time = time_tag[1].text
                return time
        except Exception:
            # 华农官网时间戳
            tags = html.find('table', attrs={'width':'880', 'border':'0', 'cellspacing':'0'})
            if tags != None:
                time = tags.find('td', attrs={'align': 'center'}, text=re.compile('(.*?)撰写时间(.+?)')).text
                time = re.findall('(.*?)撰写时间\:(\d\d\d\d\-\d\d\-\d\d.*?)(.+?)', time)
                if len(time) != 0:
                    time = time[0][1] + ' 00:00:00'
                # print("second catch: ",time)
                return time
            # 通用时间戳(有时间)
            tags = html.find(text=re.compile('(.?)(\d\d\d\d\-\d\d\-\d\d\s\d\d\:\d\d\:\d\d)(.+?)'))
            if tags != None:
                time = re.findall('(.*?)(\d\d\d\d\-\d\d\-\d\d\s\d\d\:\d\d\:\d\d)(.*?)', tags)
                time = time[0][1]
                return time
            # 通用时间戳（无时间）
            tags = html.find(text=re.compile('(.?)(\d\d\d\d\-\d\d\-\d\d)(.+?)'))
            if tags != None:
                time = re.findall('(.?)(\d\d\d\d\-\d\d\-\d\d)(.+?)', tags)
                time = time[0][1] + ' 00:00:00'
                return time
        return False

    def __get_p_urls(self):
        html = self.__get_html(self.__p_origin_url)
        urls = self.__get_urls(html)
        if len(urls) != 0:
            return urls
        return False

    def __get_n_urls(self):
        html = self.__get_html(self.__n_origin_url)
        urls = self.__get_urls(html)
        if len(urls) != 0:
            return urls
        return False

    def __sove_data(self):
        print(self.get_n_news())
        print(self.get_p_news())
        for i in self.get_n_news():
            url = i['href']
            # print(url)
            if len(url) is 0:
                continue
            time = self.__get_news_time(url)
            i['time'] = time
            i['content'] = self.__get_content(url)
            i['md5'] = self.__get_hash_code(i['href'], i['title'])
        for i in self.get_p_news():
            url = i['href']
            # print(url)
            if len(url) is 0:
                continue
            time = self.__get_news_time(url)
            i['time'] = time
            i['content'] = self.__get_content(url)
            i['md5'] = self.__get_hash_code(i['href'], i['title'])

    def __get_hash_code(self, url, title):
        md5 = hashlib.md5()
        md5.update((url + title).encode(encoding='utf8'))
        md5_code = md5.hexdigest()
        return md5_code

    def __get_content(self, url):
        html = self.__get_html(url)
        contain = None
        if html is False:
            contain = None
            my_log('debug', "内容打开失败失败， URL:" + url)
        else:
            contain = html.find('div', id='content')
            if contain is None:
                contain = html.find('div', class_='TRS_Editor')
            if contain is None:
                contain = html.find('div', class_='article_body')
            if contain is None:
                my_log('debug', "获取内容失败， URL:"+url)
        return str(contain)

    def main(self):
        self.__sove_data()

    def get_n_news(self):
        return self.__n_urls

    def get_p_news(self):
        return self.__p_urls

#
# if __name__ == '__main__':
#     instance = JWCSpider()
#     instance.main()
