# P-E-A Toolkit

**The official implementation of the Perceived Exaggerated Amplification (P-E-A) score, based on Social Physics Master Lexicon v1.0.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)

## 🎯 What is P-E-A?

The **Perceived Exaggerated Amplification (P-E-A)** score quantifies how much algorithmic systems distort social perception. It measures the gap between what platforms show us and baseline reality across four dimensions:

1. **Prevalence Amplification** (Aₚ) – Over-representation of content
2. **Emotional Amplification** (Aₑ) – Inflated emotional intensity  
3. **Bot/Coordination Amplification** (A_b) – Artificial coordination signals
4. **Bias Skew Amplification** (Aₛ) – Systematic slant and diversity loss

## 📦 Quick Start

```python
from pe_a_calculator import PEACalculator

# Create calculator
calc = PEACalculator()

# Your platform data
feed_data = {
    'prevalence': 0.25,
    'emotion': 0.8,
    'bot_activity': 2.5,
    'slant_mean': 0.9,
    'slant_std': 0.1
}

# Baseline/reference data  
baseline_data = {
    'prevalence': 0.05,
    'emotion': 0.3,
    'bot_activity': 0.1,
    'slant_mean': 0.0,
    'slant_std': 0.7
}

# Calculate P-E-A score
score = calc.calculate_from_data(feed_data, baseline_data)
print(f"P-E-A Score: {score:.2f}")
print(calc.interpret())