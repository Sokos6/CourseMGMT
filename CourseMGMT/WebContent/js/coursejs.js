onload = function () {
    init();
    console.log("loaded busters")
};

function init() {
    var btn1 = document.getElementById("btn1");
    btn1.addEventListener("click", function(e) {
    	getData();
    });
    var newbutton = document.getElementById("newbutton");
    newbutton.addEventListener("click", function(e) {
    	e.preventDefault();
    	console.log("clicked");
    	buildNewForm();
 
    })
}

function buildNewForm() {
	var div = document.getElementById("newcourse");
	var form = document.createElement("form");
	form.setAttribute("name", "createform");
	var coursename = document.createElement("input");
	coursename.setAttribute("type", "text");
	coursename.setAttribute("name", "coursename");
	var submit = document.createElement("input");
	submit.setAttribute("type", "submit");
	submit.setAttribute("name", "submit");
	submit.setAttribute("value", "Submit");
	submit.addEventListener("click", function(e) {
		e.preventDefault();
		var newform = document.createform;
        var course = {};
        course.name = newform.coursename.value;
        course.credits = newform.credits.value;
		console.log(course);
        createCourse(course);
		
	})
	var credits = document.createElement("input");
	credits.setAttribute("type", "text");
	credits.setAttribute("name", "credits");
	form.appendChild(coursename);
	form.appendChild(credits);
	form.appendChild(submit);
	div.appendChild(form);
	
}

function createCourse(obj) {
    var xhr = new XMLHttpRequest();
    xhr.open("PUT", "rest/course")
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.onreadystatechange = function() {
        console.log(xhr.status);
    }
    xhr.send(JSON.stringify(obj)) 
}

function showCourses(data) {
	var div = document.getElementById("courseList");
	for(var i=0; i<data.length; i++) {
		var p = document.createElement("p");
		p.innerHTML = data[i].name;
		div.appendChild(p);
	}
		
	
}


function getData() {
var xhr = new XMLHttpRequest();

xhr.open("GET", "http://localhost:8080/CourseMGMT/rest/getCourses", true);

xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status < 400) {
        showCourses(JSON.parse(xhr.responseText));
    }
}
xhr.send(null);
}
//
//var xhr = new XMLHttpRequest();
//xhr.open("GET", "http://SOMEURL.com");
//xhr.onreadystatechange = function () {
//    if (xhr.readyState == 4 && xhr.status < 400) {
//        JSON.parse(xhr.responseText);
//    }
//};
//xhr.send(null);
//
//var body = document.querySelector('body');
//var btn1 = document.getElementById('btn1');
//
//var listallcourses = document.getElementById('btn1container');
//
//
//
//
//var clicked = function(e) {
//    e.preventDefault();
//    console.log("clicked");
//};