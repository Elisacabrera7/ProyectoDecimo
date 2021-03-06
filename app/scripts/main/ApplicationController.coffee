'use strict'

angular.module('WissenSystem')

.controller('ApplicationController', ['$scope', 'USER_ROLES', 'AuthService', 'toastr', '$state', '$rootScope', ($scope, USER_ROLES, AuthService, toastr, $state, $rootScope)->

	$scope.USER= {}

	$scope.toastr = toastr

	$scope.verificar_acceso = AuthService.verificar_acceso
	$scope.isAuthorized = AuthService.isAuthorized
	$scope.hasRoleOrPerm = AuthService.hasRoleOrPerm

	$scope.USER_ROLES = USER_ROLES

	$scope.isLoginPage = false

	$scope.navFull = true
	$scope.toggleNav = ()->
		$scope.navFull = !$scope.navFull

	$scope.floatingSidebar = 0
	$scope.toggleFloatingSidebar = ()->
		$scope.floatingSidebar = if $scope.floatingSidebar then false else true


	$scope.idiomas = [
		{
			id: 1
			nombre: 'Español'
			abrev: 'ES'
			evento_id: 1
			original: 'Español'
			is_main: true
		},
		{
			id: 2
			nombre: 'Inglés'
			abrev: 'EN'
			evento_id: 1
			original: 'English'
			is_main: false
		}
	]


])