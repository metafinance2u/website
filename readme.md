
gsutil iam ch allUsers:objectViewer gs://metafinance2u.com
gsutil web set -m index.html -e 404.html gs://metafinance2u.com

gsutil cp -z html \
  index.html gs://metafinance2u.com

gsutil cp -z js \
  business/js/* gs://metafinance2u.com

gsutil cp -z js \
  vendor/js/* gs://metafinance2u.com

gsutil cp -z css \
  vendor/css/* gs://metafinance2u.com  

gsutil cp -z css \
  css/* gs://metafinance2u.com    



https://megaone.acrothemes.com/index-classic-business.html


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-219570784-1">
</script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-219570784-1');
</script>