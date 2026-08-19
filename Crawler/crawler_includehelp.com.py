import requests
import os
from bs4 import BeautifulSoup
from urllib.parse import urlparse

URLS= ["https://www.includehelp.com/c-programs/c-programs-basic-input-output-operations.aspx",
"https://www.includehelp.com/c-programs/switch-case-examples.aspx",
"https://www.includehelp.com/c-programs/goto-programs.aspx",
"https://www.includehelp.com/c-programs/c-programs-bitwise-programs-and-solutions.aspx",
"https://www.includehelp.com/c-programs/c-programs-looping-using-for-while-do-while.aspx",
"https://www.includehelp.com/c-programs/string.aspx",
"https://www.includehelp.com/c-programs/c-programs-string-user-defined-functions.aspx",
"https://www.includehelp.com/c-programs/c-programs-number-related-digits-manipulation-programs.aspx",
"https://www.includehelp.com/c-programs/c-programs-number-system-conversion-programs.aspx",
"https://www.includehelp.com/c-programs/c-program-to-print-stars-in-series-pyramid-using-looping.aspx",
"https://www.includehelp.com/c-programs/sum-of-series-index.aspx",
"https://www.includehelp.com/c-programs/user-define-functions.aspx",
"https://www.includehelp.com/c-programs/c-programs-one-dimensional-arrays-problems-and-solutions.aspx",
"https://www.includehelp.com/c-programs/c-programs-two-dimensional-array-or-matrix-programs.aspx",
"https://www.includehelp.com/c-programs/preprocessor-programs.aspx"]
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

    # Extract hyperlinks specifically from an ordered list
    for ol in soup.find_all('ol'):
        for link in ol.find_all('a', href=True):
            # e.g. https://www.includehelp.com/c-programs/c-program-to-print-hello-world.aspx
            program_links.append("https://www.includehelp.com/c-programs/"+ link['href'])
    
    return program_links

###########################################################################################
def fetch_and_save_code(link,idx=0):
    response = requests.get(link, headers=HEADERS)
    if response.status_code != 200:
        print(f"Error fetching the link: {link}")
        return

    soup = BeautifulSoup(response.content, 'html.parser')
    code_block = soup.find('pre', class_='i3-code')

    if code_block:
        # Derive a valid filename from the link
        page_name = os.path.basename(urlparse(link).path)
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
