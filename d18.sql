UPDATE battles SET name = replace(name, rtrim(name), '') + rtrim(name)
