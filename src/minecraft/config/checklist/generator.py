# Code by Copilot
# This script is used to generate translation keys for task files and write them to a json file
import json

def generate_translation_keys(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    translation_keys = {}
    key_prefix = "skyfactory_5.task."
    key_counter = 1
    updated_lines = []

    for line in lines:
        stripped_line = line.strip()
        if stripped_line == "===" or stripped_line == "":
            updated_lines.append(line)
            continue
        if stripped_line.startswith("# "):
            key = f"{key_prefix}{key_counter}"
            translation_keys[key] = stripped_line[2:]
            updated_lines.append(f"#{key}\n")
            key_counter += 1
        elif stripped_line.startswith("#"):
            key = f"{key_prefix}{key_counter}"
            translation_keys[key] = stripped_line[1:]
            updated_lines.append(f"#{key}\n")
            key_counter += 1
        else:
            key = f"{key_prefix}{key_counter}"
            translation_keys[key] = stripped_line
            updated_lines.append(f"{key}\n")
            key_counter += 1

    return translation_keys, updated_lines

def write_translation_keys(translation_keys, output_file_path):
    with open(output_file_path, 'w', encoding='utf-8') as file:
        json.dump(translation_keys, file, ensure_ascii=False, indent=4)

def update_input_file(file_path, updated_lines):
    with open(file_path, 'w', encoding='utf-8') as file:
        file.writelines(updated_lines)

def replace_keys_with_values(file_path, translation_keys_path):
    with open(translation_keys_path, 'r', encoding='utf-8') as file:
        translation_keys = json.load(file)

    with open(file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    updated_lines = []
    for line in lines:
        stripped_line = line.strip()
        if stripped_line.startswith("# "):
            key = stripped_line[2:]
            updated_lines.append(f"# {translation_keys.get(key, key)}\n")
        elif stripped_line.startswith("#"):
            key = stripped_line[1:]
            updated_lines.append(f"#{translation_keys.get(key, key)}\n")
        else:
            key = stripped_line
            updated_lines.append(f"{translation_keys.get(key, key)}\n")

    update_input_file(file_path, updated_lines)

if __name__ == "__main__":
    print("Mode: ")
    print("1. Generate translation keys")
    print("2. Write translation keys")
    mode = input("Input mode number: ").strip()

    if mode == "1":
        file_path = input("Input task file: ").strip()
        translation_keys, updated_lines = generate_translation_keys(file_path)
        write_translation_keys(translation_keys, "translations.json")
        update_input_file(file_path, updated_lines)
        print(f"Translation keys have been written to translations.json")
        print(f"Input file {file_path} has been updated with translation keys")
    elif mode == "2":
        file_path = input("Input task file: ").strip()
        translation_keys_path = input("Input lang file: ").strip()
        replace_keys_with_values(file_path, translation_keys_path)
        print(f"Input file {file_path} has been updated with translation values from {translation_keys_path}")
    else:
        print("Invaild mode number")
