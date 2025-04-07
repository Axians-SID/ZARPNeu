sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zarpneu/zarpneuui/test/integration/FirstJourney',
		'zarpneu/zarpneuui/test/integration/pages/YY1_DOSSIERList',
		'zarpneu/zarpneuui/test/integration/pages/YY1_DOSSIERObjectPage'
    ],
    function(JourneyRunner, opaJourney, YY1_DOSSIERList, YY1_DOSSIERObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zarpneu/zarpneuui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheYY1_DOSSIERList: YY1_DOSSIERList,
					onTheYY1_DOSSIERObjectPage: YY1_DOSSIERObjectPage
                }
            },
            opaJourney.run
        );
    }
);