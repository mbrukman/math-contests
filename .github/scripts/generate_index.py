#!/usr/bin/python

"""Generates an index.md file listing all available problems and solutions,
rendered in both LaTeX and Typst."""

import argparse
import os


def generate_index(contest_name: str, contest_abbrev: str) -> None:
    """Generates an index.md file, linking to all available PDFs."""
    years = set()
    for root, dirs, files in os.walk('.'):
        for file in files:
            if file.endswith('.pdf'):
                # Normalize path and split
                normalized_root = os.path.normpath(root)
                parts = normalized_root.split(os.sep)
                # Structure: (tex|typ)/YEAR/problems.pdf
                if len(parts) >= 2 and parts[0] in ['tex', 'typ']:
                    years.add(parts[1])
                elif len(parts) >= 3 and parts[0] == '.' and parts[1] in ['tex', 'typ']:
                    years.add(parts[2])

    md = f"""# {contest_name}

Available problems and solutions for the {contest_abbrev}, rendered via both LaTeX and Typst.

| Year | LaTeX Problems | LaTeX Solutions | Typst Problems | Typst Solutions |
|------|----------------|-----------------|----------------|-----------------|
"""

    for year in sorted(years):
        line = f"| {year} | "

        # LaTeX
        tex_prob = f"tex/{year}/problems.pdf"
        tex_sol = f"tex/{year}/solutions.pdf"
        line += f"{'[problems](' + tex_prob + ')' if os.path.exists(tex_prob) else ''} | "
        line += f"{'[solutions](' + tex_sol + ')' if os.path.exists(tex_sol) else ''} | "

        # Typst
        typ_prob = f"typ/{year}/problems.pdf"
        typ_sol = f"typ/{year}/solutions.pdf"
        line += f"{'[problems](' + typ_prob + ')' if os.path.exists(typ_prob) else ''} | "
        line += f"{'[solutions](' + typ_sol + ')' if os.path.exists(typ_sol) else ''} |"

        md += line + "\n"

    with open('index.md', 'w') as f:
        f.write(md)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Generate index.md for math contests."
    )
    parser.add_argument(
        "--contest-name",
        required=True,
        help="Full name of the math contest",
    )
    parser.add_argument(
        "--contest-abbrev",
        required=True,
        help="Abbreviation of the math contest",
    )
    args = parser.parse_args()

    generate_index(args.contest_name, args.contest_abbrev)
