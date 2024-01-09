<!DOCTYPE html>
<html lang="en">

<head>

    <% base_tag %>
    $MetaTags(false)
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$Title</title>
</head>

<body>
    <div class="section-wrapper">

        <div id="preLoader"></div>

        <% include Header %>

        $Layout

        <% include Footer %>
    </div>
</body>

</html>