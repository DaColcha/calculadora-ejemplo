<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Calculadora interes</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-200">

<div>

    <div class = "bg-white mx-auto text-center w-1/2 py-5 shadow-xl rounded-3xl my-96 max-w-2xl">
        <h2 class ="text-2xl text-center font-semibold border-b pb-2 mx-6">Calculadora Interés Compuesto </h2>

        <h3 class = "bg-red-100 text-red-800 font-mono text-xl w-80 rounded-lg my-2 mx-auto">${error}</h3>
        <form action="/" method="post">

            <div class = "grid grid-cols-2 gap-4 my-5 mx-8">

                <label for = "capital" class="text-xl flex items-center">Capital: </label>
                <input class = "w-full p-1 border-2 placeholder-blue-800 border-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2"id = "capital" type="number" name="capital" value="${capital}">

                <label for = "interes" class="text-xl flex items-center">Porcentaje de interés: </label>
                <input  class = "w-full p-1 border-2 placeholder-blue-800 border-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id = "interes" type="number" min="1" max="100" value="${interes}" name="interes">

                <label for = "anios" class="text-xl flex items-center"># Años: </label>
                <input class = "w-full p-1 border-2 placeholder-blue-800 border-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id = "anios" type="number" name="anios" value="${anios}">

                <label for = "periodos" class="text-xl flex items-center">Periodos por año: </label>
                <input class = "w-full p-1 border-2 placeholder-blue-800 border-blue-800 appearance-none rounded-lg focus:outline-none focus:ring-2" id = "periodos" type="number" min="1" max="12" name="periodos" value="${periodos}">

            </div>

            <button class = "bg-blue-300 text-lg font-semibold px-4 py-1 rounded-lg hover:bg-blue-800 hover:text-white" type="submit">Calcular</button>

            <p class = "text-3xl font-mono text-green-600">Resultado: ${result}</p>

        </form>
    </div>
</div>

</body>
</html>