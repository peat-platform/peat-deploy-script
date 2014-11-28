#!/bin/bash

curl --insecure -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "images",
      "@openi_type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://openi-ict.eu/images/ids"
    }
  ],
  "@reference": "https://openi-ict.eu/images"
}' \
  https://localhost:443/api/v1/types


curl --insecure -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "videos",
      "@openi_type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://openi-ict.eu/videos/ids"
    }
  ],
  "@reference": "https://openi-ict.eu/videos"
}' \
  https://localhost:443/api/v1/types


curl --insecure -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "pdfs",
      "@openi_type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://openi-ict.eu/pdfs/ids"
    }
  ],
  "@reference": "https://openi-ict.eu/pdfs"
}' \
  https://localhost:443/api/v1/types



curl --insecure -X POST \
  -H "Accept:application/json" \
  -H "Content-Type: application/json" \
  -d '{
  "@context": [
    {
      "@property_name": "audio",
      "@openi_type": "attachment",
      "@required": false,
      "@multiple": true,
      "@context_id": "https://openi-ict.eu/audio/ids"
    }
  ],
  "@reference": "https://openi-ict.eu/audio"
}' \
  https://localhost:443/api/v1/types
