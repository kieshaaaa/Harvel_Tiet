import sys

def calculate_wer(reference, hypothesis):
    """
    Calculates the Word Error Rate (WER) between two sentences.
    """
    ref_words = reference.split()
    hyp_words = hypothesis.split()
    distances = [[0 for _ in range(len(hyp_words) + 1)] for _ in range(len(ref_words) + 1)]

    for i in range(1, len(ref_words) + 1):
        distances[i][0] = i
    for j in range(1, len(hyp_words) + 1):
        distances[0][j] = j

    for i in range(1, len(ref_words) + 1):
        for j in range(1, len(hyp_words) + 1):
            if ref_words[i - 1] == hyp_words[j - 1]:
                distances[i][j] = distances[i - 1][j - 1]
            else:
                distances[i][j] = min(
                    distances[i - 1][j] + 1,
                    distances[i][j - 1] + 1,
                    distances[i - 1][j - 1] + 1
                )

    wer = distances[-1][-1] / float(len(ref_words))
    return wer

def process_files(file1, file2):
    """
    Process each line of two files and calculate the WER for corresponding lines.
    """
    try:
        with open(file1, 'r', encoding='utf-8') as f1, open(file2, 'r', encoding='utf-8') as f2:
            for idx, (line1, line2) in enumerate(zip(f1, f2), start=1):
                wer_result = calculate_wer(line1.strip(), line2.strip())
                print(f"Line {idx}: WER = {wer_result:.2%}")
    except FileNotFoundError:
        print("One of the files was not found. Please check the file paths.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py <file1> <file2>")
    else:
        file1 = sys.argv[1]
        file2 = sys.argv[2]
        process_files(file1, file2)
