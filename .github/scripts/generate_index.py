#!/usr/bin/python

"""Generates an index.md file listing all available problems and solutions
for the VTRMC, rendered in both LaTeX and Typst."""

import os


def generate_index():
    """Generates an index.md file, linking to all available PDFs."""
    years = set()
    for root, dirs, files in os.walk('.'):
        for file in files:
            if file.endswith('.pdf'):
                # Normalize path and split
                normalized_root = os.path.normpath(root)
                parts = normalized_root.split(os.sep)
                # Structure: vtrmc/(tex|typ)/YEAR/problems.pdf
                if len(parts) >= 3 and parts[0] == 'vtrmc' and (parts[1] == 'tex' or parts[1] == 'typ'):
                    years.add(parts[2])
                elif len(parts) >= 4 and parts[0] == '.' and parts[1] == 'vtrmc' and (parts[2] == 'tex' or parts[2] == 'typ'):
                    years.add(parts[3])

    md = """# Virginia Tech Regional Math Contest

Available problems and solutions for the VTRMC, rendered via both LaTeX and Typst.

| Year | LaTeX Problems | LaTeX Solutions | Typst Problems | Typst Solutions |
|------|----------------|-----------------|----------------|-----------------|
"""

    for year in sorted(years):
        line = f"| {year} | "

        # LaTeX
        tex_prob = f"vtrmc/tex/{year}/problems.pdf"
        tex_sol = f"vtrmc/tex/{year}/solutions.pdf"
        line += f"{'[problems](' + tex_prob + ')' if os.path.exists(tex_prob) else ''} | "
        line += f"{'[solutions](' + tex_sol + ')' if os.path.exists(tex_sol) else ''} | "

        # Typst
        typ_prob = f"vtrmc/typ/{year}/problems.pdf"
        typ_sol = f"vtrmc/typ/{year}/solutions.pdf"
        line += f"{'[problems](' + typ_prob + ')' if os.path.exists(typ_prob) else ''} | "
        line += f"{'[solutions](' + typ_sol + ')' if os.path.exists(typ_sol) else ''} |"

        md += line + "\n"

    with open('index.md', 'w') as f:
        f.write(md)


if __name__ == "__main__":
    generate_index()
