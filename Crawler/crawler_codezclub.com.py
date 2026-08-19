import requests
import os
from bs4 import BeautifulSoup
from urllib.parse import urlparse
import hashlib

URLS= ["https://www.codezclub.com/c-solved-programs-examples-solutions/"]
HEADERS = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'}
###########################################################################################
def fetch_program_links(url):
    response = requests.get(url, headers=HEADERS)
    
    if response.status_code != 200:
        print("Error fetching the page!")
        return []

    soup = BeautifulSoup(response.content, 'html.parser')
    program_links = []
    tables = soup.find_all('table')
    for table in tables:
        # Extract URLs from each row of each table
        for row in table.find_all('tr'):
            for cell in row.find_all('td'):
                link = cell.find('a', href=True)
                if link:
                    program_links.append("https://www.codezclub.com"+link['href'])
    return program_links
###########################################################################################
def is_valid_filename(filename):
    INVALID_CHARS = {'/', '\\', ':', '*', '?', '"', '<', '>', '|'}
    if any(char in filename for char in INVALID_CHARS):
        return False
    if not filename.strip():
        return False
    return True
###########################################################################################
def fetch_and_save_code(link,idx=0):
    response = requests.get(link, headers=HEADERS)
    if response.status_code != 200:
        print(f"Error fetching the link: {link}")
        return

    soup = BeautifulSoup(response.content, 'html.parser')
    code_block = soup.find('pre', class_='lang:c decode:true')

    if code_block:
        # Derive a valid filename from the link
        page_name = os.path.basename(urlparse(link).path)
        if(is_valid_filename(page_name)==False):
            page_name = soup.title.string
            if (is_valid_filename(page_name)==False):
                page_name = hashlib.sha224(code_block.encode()).hexdigest()
                print("Hash as PageName: <"+page_name+">")
        file_name = f"DataSet/{str(idx)}_{page_name}.c"
        commented_url = f"/* Source: {link} */\n"
        with open(file_name, 'w', encoding='utf-8') as file:
            file.write(commented_url)
            file.write(code_block.text)
        print("Complete: [%s]" %(file_name))
###########################################################################################
if __name__ == "__main__":
    links = []
    for url in URLS:
        links=links+fetch_program_links(url)
    print("Total Links found: %d"%(len(links)))
    for idx,link in enumerate(links):
        print("Downloading: %d/%d [%s]" %(idx,len(links),link))
        fetch_and_save_code(link,idx)
