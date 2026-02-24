from pathlib import Path

p = Path(__file__).parent / "sample.log"
n = sum("Failed password" in l for l in p.read_text().splitlines())
print(n)

