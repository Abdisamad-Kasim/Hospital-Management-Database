<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Somali Clinic Agent</title>
</head>

<body>

<div id="root"></div>

<script>
  window.wxOConfiguration = {
    orchestrationID: "20260525-1827-2761-707b-e5d9526e3186_20260525-1842-1766-30ac-1a64ecb797a5",
    hostURL: "https://dl.watson-orchestrate.ibm.com",
    rootElementID: "root",
    chatOptions: {
      agentId: "c7965fa4-012e-4690-8a9c-f3b92802c0cd",
      agentEnvironmentId: "8bd2c914-2a7a-4007-8ae3-ee9e3510e8d1"
    }
  };

  setTimeout(function () {
    const script = document.createElement('script');
    script.src = `${window.wxOConfiguration.hostURL}/wxochat/wxoLoader.js?embed=true`;

    script.addEventListener('load', function () {
      wxoLoader.init();
    });

    document.head.appendChild(script);
  }, 0);
</script>

</body>
</html>