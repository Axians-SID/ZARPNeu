sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'zarpneu.zarpneuui',
            componentId: 'YY1_DOSSIERObjectPage',
            contextPath: '/YY1_DOSSIER'
        },
        CustomPageDefinitions
    );
});