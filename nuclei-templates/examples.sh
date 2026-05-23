#!/bin/bash

# Nuclei IDOR Detection - Usage Examples
# This script demonstrates various ways to run IDOR detection scans

echo "🔍 Nuclei IDOR Detection Examples"
echo "=================================="

# Example 1: Scan single target
echo -e "\n✅ Example 1: Scan Single Target"
echo "Command:"
echo 'nuclei -t nuclei-templates/idor-detection.yaml -u https://api.example.com'

# Example 2: Scan with authentication
echo -e "\n✅ Example 2: Scan with Authentication"
echo "Command:"
echo 'nuclei -t nuclei-templates/idor-detection.yaml -u https://api.example.com \'
echo '  -H "Authorization: Bearer YOUR_TOKEN"'

# Example 3: Scan multiple targets from file
echo -e "\n✅ Example 3: Scan Multiple Targets"
echo "Command:"
echo 'nuclei -t nuclei-templates/ -l targets.txt -o results.json'

# Example 4: Scan with all IDOR templates
echo -e "\n✅ Example 4: Scan All IDOR Templates"
echo "Command:"
echo 'nuclei -t nuclei-templates/idor-detection.yaml \'
echo '       -t nuclei-templates/idor-enumeration.yaml \'
echo '       -u https://api.example.com'

# Example 5: Scan with custom headers and timeout
echo -e "\n✅ Example 5: Scan with Custom Headers"
echo "Command:"
echo 'nuclei -t nuclei-templates/idor-detection.yaml \'
echo '  -u https://api.example.com \'
echo '  -H "Authorization: Bearer TOKEN" \'
echo '  -H "X-API-Key: YOUR_API_KEY" \'
echo '  -timeout 15'

# Example 6: Verbose output with detailed logging
echo -e "\n✅ Example 6: Verbose Output"
echo "Command:"
echo 'nuclei -t nuclei-templates/ -u https://api.example.com -v'

# Example 7: JSON output for integration
echo -e "\n✅ Example 7: JSON Output"
echo "Command:"
echo 'nuclei -t nuclei-templates/ -u https://api.example.com -o results.json -j'

# Example 8: HTML report generation
echo -e "\n✅ Example 8: HTML Report"
echo "Command:"
echo 'nuclei -t nuclei-templates/ -u https://api.example.com -o results.html -irr'

# Example 9: Scan with specific template ID
echo -e "\n✅ Example 9: Scan Specific Template"
echo "Command:"
echo 'nuclei -t nuclei-templates/idor-detection.yaml \'
echo '  -id idor-numeric-id-enumeration \'
echo '  -u https://api.example.com'

# Example 10: Scan with rate limiting
echo -e "\n✅ Example 10: Scan with Rate Limiting"
echo "Command:"
echo 'nuclei -t nuclei-templates/ -u https://api.example.com \'
echo '  -rl 10'  # 10 requests per second

echo -e "\n\n📚 Template File Structure"
echo "=================================="
echo "nuclei-templates/"
echo "├── idor-detection.yaml      - Main IDOR detection template"
echo "├── idor-enumeration.yaml    - UUID/Numeric ID enumeration"
echo "├── config.yaml              - Configuration template"
echo "├── examples.sh              - Usage examples"
echo "└── README.md                - Documentation"

echo -e "\n\n⚙️  Important Notes"
echo "=================================="
echo "1. Replace 'YOUR_TOKEN' with your actual authentication token"
echo "2. Replace 'api.example.com' with your target domain"
echo "3. Always get permission before testing"
echo "4. Use VPN/Proxy if needed: -proxy http://127.0.0.1:8080"
echo "5. Update variables in YAML files for your specific endpoints"
