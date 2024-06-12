<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mvcPrj.Cornflix"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CORNFLIX</title>
    <link href="/mvcProject/css/reset.css" rel="stylesheet" type="text/css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            z-index: 1;
        }

        .player {
            width: 80%;
            position: relative;
            background-color: #000;
        }

        video {
            width: 100%;
            height: auto;
            max-width: 100%;
            max-height: 100%;
            display: block;
            margin: 0 auto;
        }

        .controls {
            display: none;
            position: absolute;
            bottom: 1%;
            width: 100%;
            display: flex;
            justify-content: center;
            z-index: 100;
        }

        .control-btn {
            background-color: transparent;
            border: none;
            cursor: pointer;
            margin: 0 20px;
            outline: none;
            width: 30px;
            height: 30px;
            background-size: cover;
            filter: invert(99%) sepia(98%) saturate(96%) hue-rotate(220deg) brightness(113%) contrast(96%);
        }

        .control-btn-img {
            background-color: transparent;
            border: none;
            cursor: pointer;
            margin: 0 10px;
            outline: none;
            width: 30px;
            height: 30px;
            background-size: cover;
        }

        .control-btn:hover {
            opacity: 0.7;
        }

        .play-pause-btn {
            background-image: url('/mvcProject/img/play.png');
        }

        .fullscreen-btn {
            background-image: url('/mvcProject/img/Fscreen.png');
        }

        .seek-bar {
            width: 70%;
            height: 5px;
            background-color: grey;
            cursor: pointer;
            margin-top: 13px;
            position: relative;
        }

        .seek-bar-fill {
            height: 100%;
            background-color: white;
            position: absolute;
            top: 0;
            left: 0;
        }

        .back-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 30px;
            cursor: pointer;
            color: white;
            z-index: 100;
        }
    </style>
</head>

<body>

    <div class="player">
        <video id="video" autoplay>
            <source src="/mvcProject/video/pm.mp4">
        </video>

        <a href="/mvcProject/index" class="back-btn">←</a>
        <div class="controls">
            <button class="control-btn play-pause-btn" onclick="togglePlayPause()"></button>
            <button class="control-btn" onclick="skip(-10)">-10s</button>
            <button class="control-btn" onclick="skip(10)">+10s</button>
            <div class="seek-bar" onclick="seek(event)">
                <div class="seek-bar-fill" id="seek-bar-fill"></div>
            </div>
            <img class="control-btn-img" id="muteButton" src="/mvcProject/img/unmute.png">
            <button class="control-btn fullscreen-btn" onclick="toggleFullScreen()"></button>
        </div>
    </div>

<script src="/mvcProject/js/movie.js"></script>
</body>
</html>