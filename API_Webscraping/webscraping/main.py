import time

from bs4 import BeautifulSoup
import requests
import time

print("Put Some skill that you are not familiar with")
unfamiliar_skill = input('>')
print(f'Filtering out {unfamiliar_skill}')
def find_job():
    # Get link from indeed.com under job search for "python" and store it on html_text
    html_text = requests.get('https://www.timesjobs.com/candidate/job-search.html?searchType=personalizedSearch&from=submit&searchTextSrc=&searchTextText=&txtKeywords=python&txtLocation=').text
    # Declaration of the url link into lxml type with BS4 built-in function
    soup = BeautifulSoup(html_text, 'lxml')
    jobs = soup.find_all('li', class_="clearfix job-bx wht-shd-bx")
    for index,job in enumerate(jobs):
        job_published_date = job.find('span', class_="sim-posted").span.text
        if 'few' in job_published_date:
            company_name = job.find('h3', class_="joblist-comp-name").text.replace(' ','')
            skills = job.find('span', class_ = "srp-skills").text.replace(' ','')
            more_info = job.header.h2.a['href']
            if unfamiliar_skill not in skills:
                with open(f'posts/{index}.txt', 'w') as f:
                    f.write(f"Company Name: {company_name.strip()} \n")
                    f.write(f"Required Skills: {skills.strip()} \n")
                    f.write(f"More Info: {more_info}")
                    f.write("")
                print(f'File saved: {index}')

if __name__ == '__main__':
    while True:
        find_job()
        time_wait = 10
        print(f'Waiting {time_wait} seconds.....')
        time.sleep(time_wait * 10)
