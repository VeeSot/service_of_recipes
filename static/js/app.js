angular.module('app', [])
    .controller('recipes_controller', ['$scope', '$http', function ($scope, $http) {
        $scope.query = '';
        $scope.recipes = [];
        $scope.search = function () {
            $http.post('/search/', {query: $scope.query}).success(
                function (response) {
                    $scope.recipes = response;
                })
        };
    }]).config(function ($httpProvider) {
    //Чтоб проходили запросы с проверкой CSRF-защиты
    $httpProvider.defaults.xsrfCookieName = 'csrftoken';
    $httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';
});