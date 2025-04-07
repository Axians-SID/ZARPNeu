sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'zarpneu.zarpneuui',
            componentId: 'YY1_DOSSIERList',
            contextPath: '/YY1_DOSSIER'
        },
        CustomPageDefinitions
    );
});