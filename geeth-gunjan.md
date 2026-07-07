---
layout: page
title: Geeth Gunjan
subtitle: Click thumbnail to download Geeth Gunjan
permalink: /geeth
---

<style>
  .pdf-grid-container {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    justify-content: center;
    padding: 20px 0;
  }

  .ninad-card {
    display: flex;
    flex-direction: column;
    width: 220px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease;
    overflow: hidden; 
  }

  .ninad-card:hover {
    transform: translateY(-8px);
  }

  .ninad-caption-banner {
    background-color: #f7fff7; 
    color: #333; 
    padding: 12px 5px;
    text-align: center;
    font-weight: 600;
    font-size: 1rem;
    margin: 0;
    order: 1; 
    margin-top: 15px; 
    border-top: 1px solid #e0e0e0; 
  }

  .ninad-card img {
    width: 100%;
    height: 300px; 
    object-fit: cover;
    display: block;
  }
</style>

<div class="pdf-grid-container">

  <figure class="ninad-card">
    {% include pdf.html 
       thumbnail_path="/assets/GeethGunjan/transliterated-thumb.png" 
       pdf_path="https://drive.google.com/uc?export=download&id=1o1U1PIGIDH2eo_rkz38BUjVd5DxU5sDt" 
       only_thumbnail=true %} 
    <figcaption class="ninad-caption-banner">Geeth Gunjan (English Transliterated)</figcaption>
  </figure>

  <figure class="ninad-card">
    {% include pdf.html 
       thumbnail_path="/assets/GeethGunjan/original-thumb.png" 
       pdf_path="https://drive.google.com/uc?export=download&id=YOUR_ORIGINAL_DRIVE_ID" 
       only_thumbnail=true %} 
    <figcaption class="ninad-caption-banner">Geeth Gunjan (Original)</figcaption>
  </figure>

</div>
