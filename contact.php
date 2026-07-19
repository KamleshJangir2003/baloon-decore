<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name      = htmlspecialchars(trim($_POST['name'] ?? ''));
    $phone     = htmlspecialchars(trim($_POST['phone'] ?? ''));
    $email     = htmlspecialchars(trim($_POST['email'] ?? ''));
    $event     = htmlspecialchars(trim($_POST['event'] ?? ''));
    $date      = htmlspecialchars(trim($_POST['date'] ?? ''));
    $city      = htmlspecialchars(trim($_POST['city'] ?? ''));
    $message   = htmlspecialchars(trim($_POST['message'] ?? ''));

    $text = "🎈 *New Booking Enquiry*\n\n"
          . "👤 *Name:* $name\n"
          . "📞 *Phone:* $phone\n"
          . "📧 *Email:* $email\n"
          . "🎉 *Event Type:* $event\n"
          . "📅 *Event Date:* $date\n"
          . "📍 *City:* $city\n"
          . "📝 *Message:* $message";

    $url = "https://wa.me/917665062706?text=" . rawurlencode($text);

    header("Location: " . $url);
    exit;
}
header("Location: contact.html");
exit;
